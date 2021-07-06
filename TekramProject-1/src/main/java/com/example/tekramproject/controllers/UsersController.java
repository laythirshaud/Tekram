package com.example.tekramproject.controllers;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.tekramproject.models.Request;
import com.example.tekramproject.models.User;
import com.example.tekramproject.repositories.RequestRepository;
import com.example.tekramproject.services.RequestService;
import com.example.tekramproject.services.UserService;
import com.example.tekramproject.validator.UserValidator;

@Controller
public class UsersController {

	private UserService userService;
	private UserValidator userValidator;
	private RequestRepository reqrepo;
	private RequestService reqser;

	public UsersController(UserService userService, UserValidator userValidator,RequestRepository reqrepo,RequestService reqser) {
		this.userService = userService;
		this.userValidator = userValidator;
		this.reqrepo = reqrepo;
		this.reqser = reqser;
	}

	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user) {
		return "registration.jsp";
	}

	@RequestMapping("/admin")
	public String adminPage(Principal principal, Model model) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		return "admin.jsp";
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
	   
	  @RequestMapping("/login")
	    public String loginpage(@ModelAttribute("user") User user) {
	        return "login.jsp";
	    }

	    @PostMapping("/login")
	    public String login(@ModelAttribute("user") User user,@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
	        if(error != null) {
	            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
	        }
	        if(logout != null) {
	            model.addAttribute("logoutMessage", "Logout Successful!");
	        }
	        return "redirect:/home";
	    }
	   
	    @RequestMapping("/home")
	    public String home(Principal principal, Model model) {
	    	
	    	String username = principal.getName();
	    	model.addAttribute("currentUser", userService.findByUsername(username));
	    	return "home.jsp";
	    }
	    
	    @RequestMapping("/admin/requests")
	    public String admin2(Model model) {
	    	List<Request> req = reqser.all();
	    	model.addAttribute("req",req);
	        return "admin2.jsp";
	    }
	    @RequestMapping("/request/{id}")
	    public String request(Model model,@PathVariable("id") long id) {
	    	Request req = reqser.findById(id);
	    	model.addAttribute("reqq",req);
	        return "requestinfo.jsp";
	    }

}
