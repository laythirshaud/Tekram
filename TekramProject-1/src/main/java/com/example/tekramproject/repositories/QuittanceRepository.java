package com.example.tekramproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.tekramproject.models.Quittance;

@Repository
public interface QuittanceRepository extends CrudRepository<Quittance, Long> {
	List<Quittance> findAll();


}