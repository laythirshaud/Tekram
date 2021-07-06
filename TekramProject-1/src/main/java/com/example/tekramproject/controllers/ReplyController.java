package com.example.tekramproject.controllers;

import java.io.FileOutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.tekramproject.models.Request;
import com.example.tekramproject.services.RequestService;
import com.example.tekramproject.services.UserService;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

@Controller
public class ReplyController {

	private UserService userService;
	private RequestService requestService;

	public ReplyController(UserService userService, RequestService requestService) {
		this.userService = userService;
		this.requestService = requestService;
	}

	
	
	@RequestMapping("/genpdf/{id}")
	public String generatePdf(@PathVariable("id") Long id, Model model) {

		Document document = new Document();
		Request request = requestService.findById(id);
       String firstname= request.getUser().getFirstname();
       String lastname=request.getUser().getLastname();
       String national=request.getUser().getUsername();
       String status=request.getStatus();
  

		try {
			String s = firstname+"_"+lastname+"_request_" + id;
			model.addAttribute("s", s);
			PdfWriter.getInstance(document,
					new FileOutputStream("C:\\Users\\Dara\\Desktop\\municipalityfiles\\" + s + ".pdf"));

			document.open();
			Font font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
			Chunk chunk = new Chunk("Ramallah Municipality", font);
			Chunk first=new Chunk("First Name: "+ firstname, font);
			Chunk last=new Chunk("Last Name: "+ lastname, font);
			Chunk userid=new Chunk("National ID: "+ national, font);
			Chunk requeststatus=new Chunk("Request Status: "+ status, font);
			

			document.add(chunk);
			document.add(new Paragraph(""));
			document.add(first);
			document.add(new Paragraph(""));
			document.add(last);
			document.add(new Paragraph(""));
			document.add(userid);
			document.add(new Paragraph(""));
			document.add(requeststatus);
			document.close();

		} catch (Exception e) {

			System.out.print("Error");
		}

		return "redirect:/admin";
	}

}
