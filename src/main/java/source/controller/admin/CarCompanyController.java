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
}
