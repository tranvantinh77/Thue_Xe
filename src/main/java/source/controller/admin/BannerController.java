package source.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BannerController {

    @RequestMapping(value = "/admin/banner/list", method = RequestMethod.GET)
    public String list() {
        return "admin/banner";
    }

    @RequestMapping(value = "/admin/banner/insert", method = RequestMethod.GET)
    public String insertBanner() {
        return "admin/insertBanner";
    }

    @RequestMapping(value = "/admin/banner/update", method = RequestMethod.GET)
    public String updateBanner() {
        return "admin/updateBanner";
    }
}
