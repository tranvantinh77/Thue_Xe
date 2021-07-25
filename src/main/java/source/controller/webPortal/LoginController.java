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
public class LoginController {
	
	@Autowired
    private UserService userService;

    @GetMapping("/account/login")
    public String indexLogin(Model model) {
        return "webPortal/login";
    }
    
    @RequestMapping(value = "/account/loginSuccessful", method = RequestMethod.GET)
    public String loginSuccessful(Model model, Principal principal){
    	User loginedUser = (User) ((Authentication) principal).getPrincipal();
		source.entity.UserEntity user = userService.findByUserName(loginedUser.getUsername());
		if(user.getRole_id().getRole_name().equals("ROLE_USER")) {
			return "redirect:/";
		}
		return "redirect:/admin";
    }

    @RequestMapping(value = "/account/logoutSuccessful", method = RequestMethod.GET)
    public String logoutSuccessfulPage(Model model) {
        return "redirect:/account/login";
    }
}
