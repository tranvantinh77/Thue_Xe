package source.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeAdminController {

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String home () {
        return "admin/home/list";
    }
}
