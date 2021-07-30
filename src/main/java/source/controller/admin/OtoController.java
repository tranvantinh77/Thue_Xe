package source.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OtoController {

    @RequestMapping(value = "/admin/oto/list", method = RequestMethod.GET)
    public String list() {
        return "admin/oto";
    }

    @RequestMapping(value = "/admin/oto/insert", method = RequestMethod.GET)
    public String insertOto() {
        return "admin/insertOto";
    }

    @RequestMapping(value = "/admin/oto/update", method = RequestMethod.GET)
    public String updateOto() {
        return "admin/updateOto";
    }
}
