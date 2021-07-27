package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import source.iService.DiscountService;

@Controller
public class DiscountController {

    @Autowired
    private DiscountService discountService;

    @GetMapping("/admin/discount")
    public String listDiscount (Model model) {
        model.addAttribute("discount", discountService.findByActiveFag());
        return "admin/discount";
    }

    @GetMapping("/admin/a")
    public String a () {
        return "admin/categoryManagement";
    }
}
