package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import source.config.AppStatus;
import source.entity.OtoEntity;
import source.iService.CarCompanyService;
import source.iService.CategoryService;
import source.iService.OtoService;
import source.utils.PagningUtils;

import java.util.List;
import java.util.Optional;

@Controller
public class OtoController {

    @Autowired
    private OtoService otoService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private CarCompanyService carCompanyService;

    @RequestMapping(value = "/admin/oto/list", method = RequestMethod.GET)
    public String books(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                        @RequestParam(name = "size", required = false, defaultValue = "30") Integer size) {

        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        List<OtoEntity> listOto = otoService.findByActiveFag(pageable);
        model.addAttribute("oto", listOto);

        List<OtoEntity> list = otoService.findByActiveFag();
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

        return "admin/oto/list";
    }

    @RequestMapping(value = "/admin/oto/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "30") Integer size) {

        page -= 1;
        Pageable pageable = PageRequest.of(page, size);

        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/oto/list";
        }
        List<OtoEntity> listOto = otoService.findByKeyword(text, pageable);
        if (listOto == null) {
            return "redirect:/admin/oto/list";
        }
        model.addAttribute("oto", listOto);

        //Pagning
        List<OtoEntity> list = otoService.findByKeyword(text);
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

        return "admin/oto/list";
    }

    @PostMapping("/oto/delete")
    @ResponseBody
    public OtoEntity delete(@RequestBody OtoEntity otoEntity1) {
        OtoEntity otoEntity = otoService.findById(otoEntity1.getId());
        otoEntity.setActiveFag(AppStatus.DeleteActiveFag);
        otoService.save(otoEntity);
        return otoEntity;
    }

    @PostMapping("/oto/status")
    @ResponseBody
    public OtoEntity banner(@RequestBody OtoEntity otoEntity1) {
        OtoEntity otoEntity = otoService.findById(otoEntity1.getId());
        if (otoEntity1.getStatus() == AppStatus.oto.Approved) {
            otoEntity.setStatus(AppStatus.oto.Unapproved);
        } else {
            otoEntity.setStatus(AppStatus.oto.Approved);
        }
        otoService.save(otoEntity);
        return otoEntity;
    }

    @RequestMapping(value = "/admin/oto/insert", method = RequestMethod.GET)
    public String insertOto(@ModelAttribute("otoEntity") OtoEntity otoEntity, Model model) {
        model.addAttribute("category", categoryService.findByActiveFag());
        model.addAttribute("carCompany", carCompanyService.findByActiveFag());
        return "admin/oto/insert";
    }

    @RequestMapping(value = "/admin/oto/update", method = RequestMethod.GET)
    public String updateOto(@RequestParam(value = "id") Long id, Model model) {
        OtoEntity otoEntity = otoService.findById(id);
        model.addAttribute("otoEntity",otoEntity);
        model.addAttribute("category", categoryService.findByActiveFag());
        model.addAttribute("carCompany", carCompanyService.findByActiveFag());
        return "admin/oto/update";
    }

    @RequestMapping(value = "/oto/save", method = RequestMethod.POST)
    public String insert(@ModelAttribute("otoEntity") OtoEntity otoEntity,
                         @RequestParam("id") Long id) {
        if (id == null) {
            otoEntity.setStatus(AppStatus.oto.Unapproved);
            otoEntity.setActiveFag(AppStatus.ActiveFag);
            otoService.save(otoEntity);
        }else {
            OtoEntity oto = otoService.findById(id);
            oto.setCode(otoEntity.getCode());
            oto.setName(otoEntity.getName());
            oto.setLicense_plates(otoEntity.getLicense_plates());
            oto.setPrice(otoEntity.getPrice());
            oto.setDescription(otoEntity.getDescription());
            oto.setCar_company_id(otoEntity.getCar_company_id());
            oto.setCategory_id(otoEntity.getCategory_id());
            otoService.save(oto);
        }

        return "redirect:/admin/oto/list";
    }
}
