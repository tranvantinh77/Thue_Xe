package source.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import source.config.AppStatus;
import source.entity.CategoryEntity;
import source.entity.CategoryEntity;
import source.entity.CategoryEntity;
import source.entity.CategoryEntity;
import source.iService.CategoryService;
import source.utils.PagningUtils;

import java.util.List;
import java.util.Optional;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/admin/category/list", method = RequestMethod.GET)
    public String list(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                       @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {
        CategoryEntity categoryEntity = new CategoryEntity();
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        List<CategoryEntity> listCategory = categoryService.findByActiveFag(pageable);
        model.addAttribute("category", listCategory);

        List<CategoryEntity> list = categoryService.findByActiveFag();
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
        model.addAttribute("categoryEntity", categoryEntity);
        return "admin/category/list";
    }

    @RequestMapping(value = "/admin/category/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {

        CategoryEntity categoryEntity = new CategoryEntity();
        page -= 1;
        Pageable pageable = PageRequest.of(page, size);

        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/category/list";
        }
        List<CategoryEntity> listCategory = categoryService.findByKeyword(text, pageable);
        if (listCategory == null) {
            return "redirect:/admin/category/list";
        }
        model.addAttribute("category", listCategory);

        //Pagning
        List<CategoryEntity> list = categoryService.findByKeyword(text);
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
        model.addAttribute("categoryEntity", categoryEntity);

        return "admin/category/list";
    }

    @RequestMapping(value = "/category/insert", method = RequestMethod.POST)
    public String insertCategory(@ModelAttribute("categoryEntity") CategoryEntity categoryEntity){
        categoryEntity.setStatus(AppStatus.category.Active);
        categoryEntity.setActiveFag(AppStatus.ActiveFag);
        categoryService.save(categoryEntity);
        return "redirect:/admin/category/list";
    }

    @GetMapping("/admin/category/update")
    @ResponseBody
    public CategoryEntity authorUpdate(@RequestParam("id") long id) {

        return categoryService.findById(id);
    }

    @PostMapping("/category/update")
    public String updateAuthor(
            @RequestParam("name") String name,
            @RequestParam("code") String code,
            @RequestParam("description") String description,
            @RequestParam("id") long id){
//        long id = Long.parseLong(discountId);
        CategoryEntity category = categoryService.findById(id);
        category.setName(name);
        category.setCode(code);
        category.setDescription(description);
        categoryService.save(category);
        return "redirect:/admin/category/list";
    }

    @PostMapping("/category/delete")
    @ResponseBody
    public CategoryEntity delete(@RequestBody CategoryEntity categoryEntity1){
        CategoryEntity categoryEntity = categoryService.findById(categoryEntity1.getId());
        categoryEntity.setActiveFag(AppStatus.DeleteActiveFag);
        categoryService.save(categoryEntity);
        return categoryEntity;
    }

    @PostMapping("/category/status")
    @ResponseBody
    public CategoryEntity status(@RequestBody CategoryEntity categoryEntity1){
        CategoryEntity categoryEntity = categoryService.findById(categoryEntity1.getId());
        if (categoryEntity.getStatus() == AppStatus.category.Active){
            categoryEntity.setStatus(AppStatus.category.Blocked);
        }
        else
            categoryEntity.setStatus(AppStatus.category.Active);
        categoryService.save(categoryEntity);
        return categoryEntity;
    }

}
