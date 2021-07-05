package com.example.tekramproject.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.example.tekramproject.models.Request;
import com.example.tekramproject.models.Suggestion;
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

	// Create a request
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

	// find all requests
	public List<Request> all() {
		return (List<Request>) requestRepository.findAll();
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

	

}
