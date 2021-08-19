package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import source.config.AppStatus;
import source.entity.CheckoutEntity;
import source.entity.CirculationEntity;
import source.iService.CheckoutService;
import source.iService.CirculationService;
import source.utils.DateUtils;
import source.utils.PagningUtils;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class CheckoutController {

    @Autowired
    private CheckoutService checkoutService;

    @Autowired
    private CirculationService circulationService;

    @RequestMapping(value = "/admin/checkout/list", method = RequestMethod.GET)
    public String books(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                        @RequestParam(name = "size", required = false, defaultValue = "20") Integer size) {
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        // check quá hạn thuê xe
        List<CheckoutEntity> outOfDate = checkoutService.findByStatus();
        for (CheckoutEntity checkoutEntity : outOfDate) {
            long millis = System.currentTimeMillis();
            java.util.Date date = new java.sql.Date(millis);
            Date returnDate = checkoutEntity.getDue_date();
            long noDay = DateUtils.daysBetween2Dates(date, returnDate);
            if (noDay < 0) {
                checkoutEntity.setPenalty(noDay *(-1) * (checkoutEntity.getOto_id().getPrice() * 1.5));
                checkoutEntity.setStatus(AppStatus.checkout.OutOfDate);
                checkoutService.save(checkoutEntity);
            }
        }

        List<CheckoutEntity> listCheckout = checkoutService.findByActiveFag(pageable);
        model.addAttribute("checkout", listCheckout);

        List<CheckoutEntity> list = checkoutService.findByActiveFag();
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

        return "admin/checkout/list";
    }

    @RequestMapping(value = "/admin/checkout/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "20") Integer size) {
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/checkout/list";
        }
        List<CheckoutEntity> listCheckout = checkoutService.findByKeyword(text, pageable);
        if (listCheckout == null) {
            return "redirect:/admin/checkout/list";
        }
        model.addAttribute("checkout", listCheckout);
        //Pagning
        List<CheckoutEntity> list = checkoutService.findByKeyword(text);
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

        return "admin/checkout/list";
    }

    @PostMapping("/checkout/status")
    @ResponseBody
    public CheckoutEntity checkout(@RequestBody CheckoutEntity checkoutEntity1) {
        CheckoutEntity checkoutEntity = checkoutService.findById(checkoutEntity1.getId());
        if (checkoutEntity1.getStatus() == AppStatus.checkout.PreRegistration) {
            checkoutEntity.setStatus(AppStatus.checkout.Borrowed);
        }
        checkoutService.save(checkoutEntity);
        return checkoutEntity;
    }

    @PostMapping("/giveCarBack")
    @ResponseBody
    public CheckoutEntity giveCarBack(@RequestBody CheckoutEntity checkoutEntity1) {
        CheckoutEntity checkoutEntity = checkoutService.findById(checkoutEntity1.getId());
        checkoutEntity.setActiveFag(AppStatus.DeleteActiveFag);
        checkoutService.save(checkoutEntity);
        //lưu vào danh sách xe đã trả
        CirculationEntity circulationEntity = new CirculationEntity();
        circulationEntity.setOto_id(checkoutEntity.getOto_id());
        circulationEntity.setUser_id(checkoutEntity.getUser_id());
        circulationEntity.setCheckout_date(checkoutEntity.getCheckout_date());
        circulationEntity.setDue_date(checkoutEntity.getDue_date());
        circulationEntity.setTotal_money(checkoutEntity.getTotal_money());
        circulationEntity.setPenalty(checkoutEntity.getPenalty());
        circulationEntity.setAction(AppStatus.circulation.GiveCarBack);
        circulationEntity.setActiveFag(AppStatus.ActiveFag);
        circulationService.save(circulationEntity);
        return checkoutEntity;
    }
}
