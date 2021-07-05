package com.example.tekramproject.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.tekramproject.models.Quittance;
import com.example.tekramproject.models.Suggestion;
import com.example.tekramproject.models.Tax;
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
	public String waterPage(@ModelAttribute("water") Water water) {
		return "water.jsp";
	}

	@RequestMapping("/quittance")
	public String quittancePage(@ModelAttribute("quittance") Quittance quittance) {
		return "quittance.jsp";
	}

	@RequestMapping("/tax")
	public String taxPage(@ModelAttribute("tax") Tax tax) {
		return "tax.jsp";
	}

	@RequestMapping("/suggestion")
	public String suggestionPage(@ModelAttribute("suggestion") Suggestion suggestion) {
		return "suggestion.jsp";
	}

}
