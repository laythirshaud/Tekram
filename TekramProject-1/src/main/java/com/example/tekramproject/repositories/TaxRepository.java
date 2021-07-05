package com.example.tekramproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.tekramproject.models.Tax;

@Repository
public interface TaxRepository extends CrudRepository<Tax, Long> {
	List<Tax> findAll();


}
