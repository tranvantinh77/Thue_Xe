package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import source.config.AppStatus;
import source.entity.DiscountEntity;
import source.entity.UserEntity;
import source.iService.UserInfoService;
import source.iService.UserService;
import source.utils.PagningUtils;

import java.util.List;
import java.util.Optional;

@Controller
public class UserInfoController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping(value = "/admin/user/list", method = RequestMethod.GET)
    public String books(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                        @RequestParam(name = "size", required = false, defaultValue = "20") Integer size) {

        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        List<UserEntity> userEntitys = userService.findByActiveFag(pageable);
        model.addAttribute("userInfo", userEntitys);

        List<UserEntity> list = userService.findByActiveFag();
        PagningUtils pagning = new PagningUtils(page, size, list.size());
        List<Integer> listPages = pagning.pagning();
        boolean isFirstPage = pagning.checkPage(page, 0);
        boolean isLastPage = pagning.checkPage(page, (pagning.getNum()-1));
        model.addAttribute("pagesize", size);
        model.addAttribute("pages", listPages);
        model.addAttribute("endPage", (pagning.getNum()));
        model.addAttribute("isFirstPage", isFirstPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("list", list);
        model.addAttribute("isLastPage", isLastPage);

        return "admin/userInfo";
    }

    @RequestMapping(value = "/admin/user/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "20") Integer size) {

        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/user/list";
        }
        List<UserEntity> userEntitys = userService.findByKeyword(text, pageable);
        if (userEntitys == null) {
            return "redirect:/admin/user/list";
        }
        model.addAttribute("userInfo", userEntitys);
        //Pagning
        List<UserEntity> list = userService.findByKeyword(text);
        PagningUtils pagning = new PagningUtils(page, size, list.size());
        List<Integer> listPages = pagning.pagning();
        boolean isFirstPage = pagning.checkPage(page, 0);
        boolean isLastPage = pagning.checkPage(page, (pagning.getNum()-1));
        model.addAttribute("pagesize", size);
        model.addAttribute("pages", listPages);
        model.addAttribute("endPage", (pagning.getNum()));
        model.addAttribute("isFirstPage", isFirstPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("list", list);
        model.addAttribute("isLastPage", isLastPage);

        return "admin/userInfo";
    }

    @PostMapping("/user/status")
    @ResponseBody
    public UserEntity banner(@RequestBody UserEntity userEntity1) {
        UserEntity userEntity = userService.findById(userEntity1.getId());
        if (userEntity.getStatus() == AppStatus.user.Active) {
            userEntity.setStatus(AppStatus.user.Disable);
        } else {
            userEntity.setStatus(AppStatus.user.Active);
        }
        userService.save(userEntity);
        return userEntity;
    }

}
