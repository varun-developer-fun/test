package com.project.batch.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.batch.entity.User;
import com.project.batch.repository.UserRepository;

@Service
public class UserService {

	private final UserRepository repo;

	public UserService(UserRepository repo) {
		this.repo = repo;
	}

//	Read - find all users
	public List<User> listAll() {
		return repo.findAll();
	}

//	Create - Inserting the user
	public void saveUser(User user) {
		repo.save(user);
	}

//	Delete - deleting the user

	public void deleteUser(Long id) {
		repo.deleteById(id);
	}
	
//	Update - Update the user
	
	public User get(Long id)
	{
		return repo.findById(id).orElse(null);
	}
}
