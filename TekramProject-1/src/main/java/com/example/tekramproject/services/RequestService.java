package com.example.tekramproject.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.example.tekramproject.models.Quittance;
import com.example.tekramproject.models.Request;
import com.example.tekramproject.models.Suggestion;
import com.example.tekramproject.models.Tax;
import com.example.tekramproject.models.Water;

import com.example.tekramproject.repositories.QuittanceRepository;
import com.example.tekramproject.repositories.RequestRepository;
import com.example.tekramproject.repositories.RoleRepository;
import com.example.tekramproject.repositories.SuggestionRepository;
import com.example.tekramproject.repositories.TaxRepository;
import com.example.tekramproject.repositories.UserRepository;
import com.example.tekramproject.repositories.WaterRepository;

@Service
public class RequestService {
	private UserRepository userRepository;
	private QuittanceRepository quittanceRepository;
	private RequestRepository requestRepository;
	private RoleRepository roleRepository;
	private SuggestionRepository suggestionRepository;
	private TaxRepository taxRepository;
	private WaterRepository waterRepository;

	public RequestService(UserRepository userRepository, QuittanceRepository quittanceRepository,
			RequestRepository requestRepository, RoleRepository roleRepository,
			SuggestionRepository suggestionRepository, TaxRepository taxRepository, WaterRepository waterRepository) {

		this.userRepository = userRepository;
		this.quittanceRepository = quittanceRepository;
		this.requestRepository = requestRepository;
		this.roleRepository = roleRepository;
		this.suggestionRepository = suggestionRepository;
		this.taxRepository = taxRepository;
		this.waterRepository = waterRepository;
	}


	//Create a request
	public Request create(Request request) {
		return requestRepository.save(request);
	}

	// find the request by ID
	public Request findById(Long id) {
		Optional<Request> optionalrequest = requestRepository.findById(id);
		if (optionalrequest.isPresent()) {
			return optionalrequest.get();
		} else {
			return null;
		}
	}

	
	public Water findwaterById(Long id) {
		Optional<Water> optionalrequest = waterRepository.findById(id);
		if (optionalrequest.isPresent()) {
			return optionalrequest.get();
		} else {
			return null;
		}
	}

	public List<Request> all() {
		return (List<Request>) requestRepository.findAll();
	}
	
	public List<Water> allwater() {
		return (List<Water>) waterRepository.findAll();
	}
	public List<Quittance> allquit() {
		return (List<Quittance>) quittanceRepository.findAll();
	}
	
	public List<Tax> alltax() {
		return (List<Tax>) taxRepository.findAll();
	}
	
	public List<Suggestion> allsug() {
		return (List<Suggestion>) suggestionRepository.findAll();
	}

	// delete request
	public void distroy(Request request) {
		requestRepository.deleteById(request.getId());
	}

	public Suggestion createSug(@Valid Suggestion sug) {
		return suggestionRepository.save(sug);
	}

	public Suggestion updateSuggestion(Suggestion su, Request re) {
		su.setRequest(re);
		return suggestionRepository.save(su);
	}

	

	public Water createWater(Water myWater) {
		return waterRepository.save(myWater);
	}
	public Water updateWater(Water wa,Request re) {
		wa.setRequest(re);
		return waterRepository.save(wa);

}


	public Quittance createQui(Quittance myQuittance) {
		return quittanceRepository.save(myQuittance);
	}


	public Quittance updateQuittance(Quittance qu, Request re) {
		qu.setRequest(re);
		return quittanceRepository.save(qu);
		
	}


	public Tax createTax(@Valid Tax myTax) {
		return taxRepository.save(myTax);
	}


	public Tax updateTax(Tax tax, Request re) {
		tax.setRequest(re);
		return taxRepository.save(tax);
		
	}



}
