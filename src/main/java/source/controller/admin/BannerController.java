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
import source.entity.BannerEntity;
import source.entity.OtoEntity;
import source.iService.BannerService;
import source.utils.PagningUtils;
import source.utils.UploadFileUtils;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Controller
public class BannerController {

    @Autowired
    private BannerService bannerService;

    @RequestMapping(value = "/admin/banner/list", method = RequestMethod.GET)
    public String books(Model model, @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                        @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {

        page -= 1;
        Pageable pageable = PageRequest.of(page, size);
        List<BannerEntity> listBanner = bannerService.findByActiveFag(pageable);
        model.addAttribute("banner", listBanner);

        List<BannerEntity> list = bannerService.findByActiveFag();
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

        return "admin/banner/list";
    }

    @RequestMapping(value = "/admin/banner/search", method = RequestMethod.GET)
    public String search(@RequestParam("keyword") Optional<String> keyword, Model model,
                         @RequestParam(name = "pageindex", required = false, defaultValue = "1") Integer page,
                         @RequestParam(name = "size", required = false, defaultValue = "10") Integer size) {

        page -= 1;
        Pageable pageable = PageRequest.of(page, size);

        //Search
        String text = keyword.get();
        if (text.equals("")) {
            return "redirect:/admin/banner/list";
        }
        List<BannerEntity> listBanner = bannerService.findByKeyword(text, pageable);
        if (listBanner == null) {
            return "redirect:/admin/banner/list";
        }
        model.addAttribute("banner", listBanner);

        //Pagning
        List<BannerEntity> list = bannerService.findByKeyword(text);
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

        return "admin/banner/list";
    }

    @RequestMapping(value = "/admin/banner/insert", method = RequestMethod.GET)
    public String insertBanner(@ModelAttribute("bannerEntity") BannerEntity bannerEntity) {

        return "admin/banner/insert";
    }

    @RequestMapping(value = "/admin/banner/update", method = RequestMethod.GET)
    public String updateBanner(@RequestParam(value = "id") Long id, Model model) {
        BannerEntity bannerEntity = bannerService.findById(id);
        model.addAttribute("bannerEntity", bannerEntity);
        return "admin/banner/update";
    }

    @RequestMapping(value = "/banner/save", method = RequestMethod.POST)
    public String insert(@ModelAttribute("bannerEntity") BannerEntity bannerEntity,
                         @RequestParam("file") MultipartFile file,
                         @RequestParam("id") Long id) throws IOException {
        if (id == null) {
            bannerEntity.setStatus(AppStatus.oto.Unapproved);
            bannerEntity.setActiveFag(AppStatus.ActiveFag);
            String fileName = StringUtils.cleanPath(file.getOriginalFilename());
            bannerEntity.setImage(fileName);
            bannerService.save(bannerEntity);
            if(!fileName.equals("")) {
                String uploadDir = "./src/main/resources/static/Banner-Image/" + bannerEntity.getId();
                UploadFileUtils.saveFile(uploadDir,file,fileName);
            }
        }else {
            BannerEntity banner = bannerService.findById(id);
            banner.setCode(bannerEntity.getCode());
            banner.setName(bannerEntity.getName());
            banner.setDescription(bannerEntity.getDescription());

            String fileName = StringUtils.cleanPath(file.getOriginalFilename());
            if(!fileName.equals("")) {
                String uploadDir = "./src/main/resources/static/Banner-Image/" + banner.getId();
                File sFile = new File(uploadDir + "/" + banner.getImage());
                if (sFile.exists() && sFile.isFile()) {
                    sFile.delete();
                }
                banner.setImage(fileName);
                UploadFileUtils.saveFile(uploadDir,file,fileName);
            }

            bannerService.save(banner);

        }

        return "redirect:/admin/banner/list";
    }

    @PostMapping("/banner/status")
    @ResponseBody
    public BannerEntity banner(@RequestBody BannerEntity bannerEntity1) {
        BannerEntity bannerEntity = bannerService.findById(bannerEntity1.getId());
        if (bannerEntity1.getStatus() == AppStatus.banner.Approved) {
            bannerEntity.setStatus(AppStatus.banner.Unapproved);
        } else {
            bannerEntity.setStatus(AppStatus.banner.Approved);
        }
        bannerService.save(bannerEntity);
        return bannerEntity;
    }

    @PostMapping("/banner/delete")
    @ResponseBody
    public BannerEntity delete(@RequestBody BannerEntity bannerEntity1) {
        BannerEntity bannerEntity = bannerService.findById(bannerEntity1.getId());
        bannerEntity.setActiveFag(AppStatus.DeleteActiveFag);
        bannerService.save(bannerEntity);
        return bannerEntity;
    }

}
