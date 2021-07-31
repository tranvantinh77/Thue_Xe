package source.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CirculationController {

    @RequestMapping(value = "/admin/circulation/list", method = RequestMethod.GET)
    public String list() {
        return "admin/circulation";
    }
}
