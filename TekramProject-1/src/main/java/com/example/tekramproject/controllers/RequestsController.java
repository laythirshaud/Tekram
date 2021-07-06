package com.example.tekramproject.controllers;

import java.io.FileOutputStream;
import java.security.Principal;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.pdf.PdfWriter;

@Controller
public class RequestsController {

	private UserService userService;
	private RequestService requestService;
	private RequestService reqser;


	public RequestsController(UserService userService, RequestService requestService,RequestService reqser
) {
		this.userService = userService;
		this.requestService = requestService;
		this.reqser = reqser;
		
	}

	@RequestMapping("/water")
	public String waterPage(@ModelAttribute("water") Water water, Model model, Principal principal) {
		String user = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));

		return "water.jsp";
	}

	@RequestMapping("/quittance")
	public String quittancePage(@ModelAttribute("quittance") Quittance quittance, Model model, Principal principal) {
		String user = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));
		return "quittance.jsp";
	}

	@RequestMapping("/suggestion")
	public String suggestionPage(@ModelAttribute("suggestion") Suggestion suggestion, Model model,
			Principal principal) {
		String user = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));

		return "suggestion.jsp";
	}
	@RequestMapping("/done")
	public String done(@ModelAttribute("suggestion") Suggestion suggestion, Model model,
			Principal principal) {
		String user = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));

		return "Done.jsp";
	}

	@RequestMapping("/tax")
	public String suggestionPage(@ModelAttribute("tax") Tax tax, Model model, Principal principal) {
		String user = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(user));

		return "tax.jsp";
	}

	@RequestMapping(value = "/water/new", method = RequestMethod.POST)
	public String addWater(@Valid @ModelAttribute("water") Water myWater, BindingResult result, Principal principal,
			Model model) {
		if (result.hasErrors()) {
			String user = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(user));
			return "water.jsp";
		} else {
			String username = principal.getName();
			User currentUser = userService.findByUsername(username);
			Request request = new Request(currentUser);
			Request re = requestService.create(request);
			Water wa = requestService.createWater(myWater);
			requestService.updateWater(wa, re);
			return "redirect:/done";

		}

	}

	@RequestMapping(value = "/tax/new", method = RequestMethod.POST)
	public String addTax(@Valid @ModelAttribute("tax") Tax myTax, BindingResult result, Principal principal,
			Model model) {
		if (result.hasErrors()) {
			String user = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(user));
			return "tax.jsp";
		} else {
			String username = principal.getName();
			User currentUser = userService.findByUsername(username);
			Request request = new Request(currentUser);
			Request re = requestService.create(request);
			Tax tax = requestService.createTax(myTax);
			requestService.updateTax(tax, re);
			return "redirect:/done";

		}

	}

	@RequestMapping(value = "/suggestion/new", method = RequestMethod.POST)
	public String addSuggestion(@Valid @ModelAttribute("suggestion") Suggestion mySuggestion, BindingResult result,
			Principal principal, Model model) {
		if (result.hasErrors()) {
			String user = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(user));

			return "suggestion.jsp";
		} else {
			String username = principal.getName();
			User currentUser = userService.findByUsername(username);
			Request request = new Request(currentUser);
			Request re = requestService.create(request);
			Suggestion su = requestService.createSug(mySuggestion);
			requestService.updateSuggestion(su, re);
			return "redirect:/done";

		}

	}

	@RequestMapping(value = "quittance/new", method = RequestMethod.POST)
	public String addquittance(@Valid @ModelAttribute("quittance") Quittance myQuittance, BindingResult result,
			Principal principal, Model model) {
		if (result.hasErrors()) {
			String user = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(user));

			return "quittance.jsp";
		} else {
			String username = principal.getName();
			User currentUser = userService.findByUsername(username);
			Request request = new Request(currentUser);
			Request re = requestService.create(request);
			Quittance qu = requestService.createQui(myQuittance);
			requestService.updateQuittance(qu, re);
			return "redirect:/done";

		}

	}

	
	@RequestMapping("/genpdf/{id}")
	public String generatePdf(@PathVariable("id") Long id) {
		
		Document document = new Document();
//		Request request = requestService.findById(id);
//       String firstname= request.getUser().getFirstname();
//       String lastname=request.getUser().getLastname();
//  

		try {
			String s = " request" + id;
			PdfWriter.getInstance(document, new FileOutputStream(s + ".pdf"));

			document.open();
			Font font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
			Chunk chunk = new Chunk("Ramallah Municipality", font);

			document.add(chunk);
			document.close();
			
			Request req = reqser.findById(id);
			req.setStatus("Approved");
			reqser.create(req);			
		} catch (Exception e) {

			System.out.print("Error");
		}

		return "redirect:/admin";
	}
}
