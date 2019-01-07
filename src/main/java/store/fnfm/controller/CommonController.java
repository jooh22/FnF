package store.fnfm.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class CommonController {
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		System.out.println("access Denied : " + auth);
		
		model.addAttribute("msg", "Access Denied");
	}
	
	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		System.out.println("error : " + error);
		System.out.println("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "check your ID / Password");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Bye");
		}
	}
	
	@GetMapping("/logout")
	public void logoutGet() {
		System.out.println("logouttttttt");
	}
	
	@PostMapping("/logout")
	public void logoutPost() {
		System.out.println("logoutttttttpost");
	}
	
	@RequestMapping(value="/find", method=RequestMethod.GET)
    public String find() {        
        return "find";
    }
}
