package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import source.config.AppStatus;
import source.entity.UserInfoEntity;
import source.entity.UserEntity;
import source.entity.UserInfoEntity;
import source.iService.RoleService;
import source.iService.UserInfoService;
import source.iService.UserService;
import source.utils.EncrytedPasswordUtils;
import source.utils.PagningUtils;
import source.utils.UploadFileUtils;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Controller
public class UserInfoController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private RoleService roleService;

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
        boolean isLastPage = pagning.checkPage(page, (pagning.getNum() - 1));
        model.addAttribute("pagesize", size);
        model.addAttribute("pages", listPages);
        model.addAttribute("endPage", (pagning.getNum()));
        model.addAttribute("isFirstPage", isFirstPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("list", list);
        model.addAttribute("isLastPage", isLastPage);

        return "admin/user/list";
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
        boolean isLastPage = pagning.checkPage(page, (pagning.getNum() - 1));
        model.addAttribute("pagesize", size);
        model.addAttribute("pages", listPages);
        model.addAttribute("endPage", (pagning.getNum()));
        model.addAttribute("isFirstPage", isFirstPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("list", list);
        model.addAttribute("isLastPage", isLastPage);

        return "admin/user/list";
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

    @RequestMapping(value = "/admin/user/insert", method = RequestMethod.GET)
    public String insertUser(Model model) {
        UserInfoEntity userInfoEntity = new UserInfoEntity();
        UserEntity userEntity = new UserEntity();
        model.addAttribute("userInfoEntity", userInfoEntity);
        model.addAttribute("userEntity", userEntity);
        return "admin/user/insert";
    }

    @RequestMapping(value = "/user/insert", method = RequestMethod.POST)
    public String insert(@ModelAttribute("userInfoEntity") UserInfoEntity userInfoEntity,
                         @RequestParam("username") String username,
                         @RequestParam("password") String password) {
        userInfoEntity.setActiveFag(AppStatus.ActiveFag);
        userInfoService.save(userInfoEntity);

        UserEntity userEntity = new UserEntity();
        userEntity.setUser_name(username);
        userEntity.setPassword(EncrytedPasswordUtils.encrytePassword(password));
        userEntity.setRole_id(roleService.findByRoleAddmin());
        userEntity.setUser_info_id(userInfoService.findByEmail(userInfoEntity.getEmail()));
        userEntity.setStatus(AppStatus.user.Active);
        userEntity.setActiveFag(AppStatus.ActiveFag);
        userService.save(userEntity);
        return "redirect:/admin/user/list";
    }

    @RequestMapping(value = "/admin/user/update", method = RequestMethod.GET)
    public String updateUser(@RequestParam(value = "id") Long id, Model model) {
        UserInfoEntity userInfoEntity = userInfoService.findById(id);
        UserEntity userEntity = userService.findByUserInfoId(id);
        model.addAttribute("userInfoEntity", userInfoEntity);
        model.addAttribute("userEntity", userEntity);
        return "admin/user/update";
    }

    @RequestMapping(value = "/user/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("userInfoEntity") UserInfoEntity userInfoEntity,
                         @RequestParam("id") Long id) {
        UserInfoEntity userInfo = userInfoService.findById(id);
        userInfo.setName(userInfoEntity.getName());
        userInfo.setEmail(userInfoEntity.getEmail());
        userInfo.setBirthday(userInfoEntity.getBirthday());
        userInfo.setGender(userInfoEntity.getGender());
        userInfo.setPhone(userInfoEntity.getPhone());
        userInfo.setCMND_CCCD(userInfoEntity.getCMND_CCCD());
        userInfo.setAddress(userInfoEntity.getAddress());
        userInfoService.save(userInfo);
        return "redirect:/admin/user/list";
    }


}
