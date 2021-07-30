package source.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CarCompanyController {

    @RequestMapping(value = "/admin/carcompany/list", method = RequestMethod.GET)
    public String list() {
        return "admin/carCompany";
    }

    @RequestMapping(value = "/admin/carcompany/insert", method = RequestMethod.GET)
    public String insertCarCompany() {
        return "admin/insertCarCompany";
    }

    @RequestMapping(value = "/admin/carcompany/update", method = RequestMethod.GET)
    public String updateCarCompany() {
        return "admin/updateCarCompany";
    }
}
