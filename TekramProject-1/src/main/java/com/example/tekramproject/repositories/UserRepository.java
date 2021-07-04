package com.example.tekramproject.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.tekramproject.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

	

	User findByUsername(String username);
}
