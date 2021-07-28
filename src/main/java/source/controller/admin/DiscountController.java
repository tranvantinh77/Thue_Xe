package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import source.config.AppStatus;
import source.entity.DiscountEntity;
import source.iService.DiscountService;
import source.utils.PagningUtils;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

@Controller
public class DiscountController {

    @Autowired
    private DiscountService discountService;

    @GetMapping("/admin/discount/list")
    public String books(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                        @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {

        DiscountEntity discountEntity = new DiscountEntity();
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        List<DiscountEntity> listDiscount = discountService.findByActiveFag(pageable);
        model.addAttribute("discount", listDiscount);

        List<DiscountEntity> list = discountService.findByActiveFag();
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
        model.addAttribute("discountEntity", discountEntity);

        return "admin/discount";
    }

    @RequestMapping(value = "/admin/discount/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {

        DiscountEntity discountEntity = new DiscountEntity();
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);

        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/discount/list";
        }
        List<DiscountEntity> listDiscount = discountService.findByKeyword(text, pageable);
        if (listDiscount == null) {
            return "redirect:/admin/discount/list";
        }
        model.addAttribute("discount", listDiscount);

        //Pagning
        List<DiscountEntity> list = discountService.findByKeyword(text);
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
        model.addAttribute("discountEntity", discountEntity);

        return "admin/discount";
    }

    @RequestMapping(value = "/discount/insert", method = RequestMethod.POST)
    public String insertDiscount(@ModelAttribute("discountEntity") DiscountEntity discountEntity){
        discountEntity.setStatus(1);
        discountEntity.setActiveFag(AppStatus.ActiveFag);
        discountService.save(discountEntity);
        return "redirect:/admin/discount/list";
    }

    @GetMapping("/admin/discount/update")
    @ResponseBody
    public DiscountEntity authorUpdate(@RequestParam("id") long id) {
        return discountService.findById(id);
    }

    @PostMapping("/discount/update")
    public String updateAuthor(
            @RequestParam("name") String name,
            @RequestParam("code") String code,
            @RequestParam("price_discount") int price_discount,
            @RequestParam("discountId") String discountId){
        long id = Long.parseLong(discountId);
        DiscountEntity discountEntity = discountService.findById(id);
        discountEntity.setName(name);
        discountEntity.setCode(code);
        discountEntity.setPrice_discount(price_discount);
        discountService.save(discountEntity);
        return "redirect:/admin/discount/list";
    }

    @PostMapping("/discount/delete")
    @ResponseBody
    public DiscountEntity delete(@RequestBody DiscountEntity discountEntity1) {
        DiscountEntity discountEntity = discountService.findById(discountEntity1.getId());
        discountEntity.setActiveFag(AppStatus.DeleteActiveFag);
        discountService.save(discountEntity);
        return discountEntity;
    }

    @PostMapping("/discount/status")
    @ResponseBody
    public DiscountEntity banner(@RequestBody DiscountEntity discountEntity1) {
        DiscountEntity discountEntity = discountService.findById(discountEntity1.getId());
        if (discountEntity1.getStatus() == AppStatus.discount.Approved) {
            discountEntity.setStatus(AppStatus.discount.Unapproved);
        } else {
            discountEntity.setStatus(AppStatus.discount.Approved);
        }
        discountService.save(discountEntity);
        return discountEntity;
    }

}
