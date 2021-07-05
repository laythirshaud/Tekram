package com.example.tekramproject.controllers;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.tekramproject.models.Quittance;
import com.example.tekramproject.models.Request;
import com.example.tekramproject.models.Suggestion;
import com.example.tekramproject.models.Tax;
import com.example.tekramproject.models.User;
import com.example.tekramproject.models.Water;
import com.example.tekramproject.services.RequestService;
import com.example.tekramproject.services.UserService;

@Controller
public class RequestsController {

	private UserService userService;
	private RequestService requestService;

	public RequestsController(UserService userService, RequestService requestService) {
		this.userService = userService;
		this.requestService = requestService;
	}

	@RequestMapping("/water")
	public String waterPage(@ModelAttribute("water") Water water,Model model,Principal principal) {
		String user=principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));

		return "water.jsp";
	}

	@RequestMapping("/quittance")
	public String quittancePage(@ModelAttribute("quittance") Quittance quittance,Model model,Principal principal) {
		String user=principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));
		return "quittance.jsp";
	}
	
	
	





	
	@RequestMapping("/suggestion")
	public String suggestionPage(@ModelAttribute("suggestion") Suggestion suggestion,Model model,Principal principal) {
		String user=principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));

		return "suggestion.jsp";
	}
	
	
	@RequestMapping(value="/water/new", method=RequestMethod.POST)
    public String addWater(@Valid @ModelAttribute("water") Water myWater,BindingResult result,Principal principal,Model model) {
        if (result.hasErrors()) {
        	String user=principal.getName();
    		model.addAttribute("currentUser", userService.findByUsername(user));
            return "water.jsp";
        }else{
        	String username = principal.getName();
        	User currentUser=  userService.findByUsername(username);
        	Request request=new Request(currentUser);
        	Request re=requestService.create(request);
        	Water wa=requestService.createWater(myWater);
        	requestService.updateWater(wa, re);
        return "redirect:/water";

        }


}
	@RequestMapping(value="/suggestion/new", method=RequestMethod.POST)
    public String addSuggestion(@Valid @ModelAttribute("suggestion") Suggestion mySuggestion,BindingResult result,Principal principal,Model model) {
        if (result.hasErrors()) {
        	String user=principal.getName();
    		model.addAttribute("currentUser", userService.findByUsername(user));

            return "suggestion.jsp";
        }else{
        	String username = principal.getName();
        	User currentUser=  userService.findByUsername(username);
        	Request request=new Request(currentUser);
        	Request re=requestService.create(request);
        	Suggestion su=requestService.createSug(mySuggestion);
        	requestService.updateSuggestion(su, re);
        return "redirect:/suggestion";

        }


}
	@RequestMapping(value="quittance/new", method=RequestMethod.POST)
    public String addquittance(@Valid @ModelAttribute("quittance") Quittance myQuittance,BindingResult result,Principal principal,Model model) {
        if (result.hasErrors()) {
        	String user=principal.getName();
    		model.addAttribute("currentUser", userService.findByUsername(user));

            return "quittance.jsp";
        }else{
        	String username = principal.getName();
        	User currentUser=  userService.findByUsername(username);
        	Request request=new Request(currentUser);
        	Request re=requestService.create(request);
        	Quittance qu=requestService.createQui(myQuittance);
        	requestService.updateQuittance(qu, re);
        return "redirect:/quittance";

        }


}
}
