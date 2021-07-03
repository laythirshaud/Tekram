package com.example.tekramproject.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.tekramproject.models.User;
import com.example.tekramproject.services.UserService;
import com.example.tekramproject.validator.UserValidator;

@Controller
public class UsersController {

	private UserService userService;
	private UserValidator userValidator;

	public UsersController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}

	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user) {
		return "registration.jsp";
	}

	   @PostMapping("/registration")
	    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
	        userValidator.validate(user, result);
	        if (result.hasErrors()) {
	            return "registration.jsp";
	        }
	        
	        userService.saveWithUserRole(user);
	        return "redirect:/home";
	    }
	   
	   @RequestMapping("/logins")
	   public String logins() {
		   return "login.jsp";
	   }

	@RequestMapping("/login")
	public String login(@ModelAttribute("user") User user,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model, HttpSession session) {
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
			
			return "login.jsp";
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
			return "login.jsp";
		}
		User newuser = userService.findByUsername(user.getUsername());
		session.setAttribute("userId", newuser.getId());
		return "home.jsp";
		
	}

	@RequestMapping(value = "/home")
	public String home(Principal principal, Model model) {

		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		return "home.jsp";
	}
	   @RequestMapping("/admin")
	    public String adminPage(Principal principal, Model model) {
	        String username = principal.getName();
	        model.addAttribute("currentUser", userService.findByUsername(username));
	        return "admin.jsp";
	    }

}
