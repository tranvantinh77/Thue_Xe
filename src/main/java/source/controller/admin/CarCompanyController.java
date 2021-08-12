package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import source.config.AppStatus;
import source.entity.CarCompanyEntity;
import source.entity.DiscountEntity;
import source.iService.CarCompanyService;
import source.utils.PagningUtils;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Optional;

@Controller
public class CarCompanyController {
    @Autowired
    private CarCompanyService carCompanyService;

    @GetMapping("/admin/carCompany/list")
    public String books(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                        @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {

        CarCompanyEntity carCompanyEntity = new CarCompanyEntity();
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        List<CarCompanyEntity> listCarCom = carCompanyService.findByActiveFag(pageable);
        model.addAttribute("carCompany", listCarCom);

        List<CarCompanyEntity> list = carCompanyService.findByActiveFag();
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
        model.addAttribute("carCompanyEntity", carCompanyEntity);

        return "admin/carCompany/list";
    }
    @RequestMapping(value = "/admin/carCompany/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {

        CarCompanyEntity carCompanyEntity = new CarCompanyEntity();
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);

        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/carCompany/list";
        }
        List<CarCompanyEntity> listCarCom = carCompanyService.findByKeyword(text, pageable);
        if (listCarCom == null) {
            return "redirect:/admin/carCompany/list";
        }
        model.addAttribute("carCompany", listCarCom);

        //Pagning
        List<CarCompanyEntity> list = carCompanyService.findByKeyword(text);
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
        model.addAttribute("carCompanyEntity", carCompanyEntity);

        return "admin/carCompany/list";
    }

    @GetMapping("/admin/carCompany/insert")
    public String insertCarCompany(
            @ModelAttribute(value = "carCompanyEntity") CarCompanyEntity carCompanyEntity,
            Model model) {
        model.addAttribute("carCompanyEntity", carCompanyEntity);

        return "admin/carCompany/insert";
    }

    @PostMapping("/carCompany/insert")
    public String insert(@ModelAttribute(value = "carCompanyEntity") CarCompanyEntity carCompanyEntity)  {
        carCompanyEntity.setActiveFag(AppStatus.ActiveFag);
        carCompanyEntity.setStatus(AppStatus.carCompany.Active);
        carCompanyService.save(carCompanyEntity);


        return "redirect:/admin/carCompany/list";
    }
    @GetMapping("/admin/carCompany/update/{id}")
    public String updateCarCompany(
            @PathVariable(value = "id") Long id,
            Model model) {
        CarCompanyEntity carCompanyEntity = carCompanyService.findById(id);
        model.addAttribute("carCompanyEntity", carCompanyEntity);

        return "admin/carCompany/update";
    }

    @RequestMapping(value = "/admin/carCompany/update", method = RequestMethod.GET)
    public String updateCarCompany() {
        return "admin/updateCarCompany";
    }

    @PostMapping("/carCompany/status")
    @ResponseBody
    public CarCompanyEntity banner(@RequestBody CarCompanyEntity carCompanyEntity1) {
        CarCompanyEntity carCompanyEntity = carCompanyService.findById(carCompanyEntity1.getId());
        if (carCompanyEntity1.getStatus() == AppStatus.carCompany.Active) {
            carCompanyEntity.setStatus(AppStatus.carCompany.Blocked);
        } else {
            carCompanyEntity.setStatus(AppStatus.carCompany.Active);
        }
        carCompanyService.save(carCompanyEntity);
        return carCompanyEntity;
    }

    @PostMapping("/carCompany/delete")
    @ResponseBody
    public CarCompanyEntity delete(@RequestBody CarCompanyEntity carCompanyEntity1) {
        CarCompanyEntity carCompanyEntity = carCompanyService.findById(carCompanyEntity1.getId());
        carCompanyEntity.setActiveFag(AppStatus.DeleteActiveFag);
        carCompanyService.save(carCompanyEntity);
        return carCompanyEntity;
    }
}
