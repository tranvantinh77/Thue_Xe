package source.controller.admin;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import source.config.AppStatus;
import source.entity.CirculationEntity;
import source.entity.CirculationEntity;
import source.iService.CirculationService;
import source.utils.DateUtils;
import source.utils.PagningUtils;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class CirculationController {

    @Autowired
    private CirculationService circulationService;

    @RequestMapping(value = "/admin/circulation/list", method = RequestMethod.GET)
    public String books(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                        @RequestParam(name = "size", required = false, defaultValue = "20") Integer size) {
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        List<CirculationEntity> listCirculation = circulationService.findByActiveFag(pageable);
        model.addAttribute("circulation", listCirculation);

        List<CirculationEntity> list = circulationService.findByActiveFag();
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

        return "admin/circulation/list";
    }

    @RequestMapping(value = "/admin/circulation/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "20") Integer size) {
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/circulation/list";
        }
        List<CirculationEntity> listCirculation = circulationService.findByKeyword(text, pageable);
        if (listCirculation == null) {
            return "redirect:/admin/circulation/list";
        }
        model.addAttribute("circulation", listCirculation);
        //Pagning
        List<CirculationEntity> list = circulationService.findByKeyword(text);
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

        return "admin/circulation/list";
    }
}
