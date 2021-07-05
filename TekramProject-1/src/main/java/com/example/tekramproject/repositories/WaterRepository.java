package com.example.tekramproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.tekramproject.models.Water;

@Repository
public interface WaterRepository extends CrudRepository<Water, Long> {
	List<Water> findAll();


}