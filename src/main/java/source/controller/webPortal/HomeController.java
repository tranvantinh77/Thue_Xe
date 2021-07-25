package source.controller.webPortal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import source.iService.UserService;

import java.security.Principal;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;


    @GetMapping("/")
    public String index(){
        return "webPortal/index";
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String accessDenied(Model model, Principal principal) {

        if (principal != null) {
            User loginedUser = (User) ((Authentication) principal).getPrincipal();

            source.entity.UserEntity user = userService.findByUserName(loginedUser.getUsername());

        }

        return "webPortal/404";
    }
}
