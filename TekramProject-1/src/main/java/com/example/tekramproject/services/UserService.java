package com.example.tekramproject.services;

import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.tekramproject.models.Request;
import com.example.tekramproject.models.User;
import com.example.tekramproject.repositories.RoleRepository;
import com.example.tekramproject.repositories.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder)     {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }
    
    public void saveWithUserRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_USER"));
        userRepository.save(user);
    }
     
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
        userRepository.save(user);
    }    
    
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
<<<<<<< HEAD
	public User findById(Long id) {
		Optional<User> optionaluser = userRepository.findById(id);
		if (optionaluser.isPresent()) {
			return optionaluser.get();
		} else {
			return null;
		}
	}
=======
    
    public User findById(Long id) {
        Optional<User> optionaluser = userRepository.findById(id);
        if (optionaluser.isPresent()) {
            return optionaluser.get();
        } else {
            return null;
        }
    }
>>>>>>> 204d4b52d9059dfb659025d643738ada954c4fd6
}