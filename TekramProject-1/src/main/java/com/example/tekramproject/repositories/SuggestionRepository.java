package com.example.tekramproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.tekramproject.models.Suggestion;

@Repository
public interface SuggestionRepository extends CrudRepository<Suggestion, Long> {
	List<Suggestion> findAll();


}
