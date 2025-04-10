package com.project.batch.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.batch.entity.User;
import com.project.batch.service.UserService;

@Controller
public class UserController {

	private final UserService service;

	public UserController(UserService service) {
		this.service = service;
	}

	@GetMapping("/")
	public String dashBoard() {
		return "dashboard"; // this is a JSP file
	}

	@GetMapping("/allUsers")
	public String allUsers(Model model) {
		List<User> allUsers = service.listAll();
		model.addAttribute("userlist", allUsers);
		return "allUsers";
	}

	@GetMapping("/new")
	public String createUser(Model model) {
		model.addAttribute("user", new User());
		return "newUser";
	}

	@PostMapping("/save")
	public String saveUser(@ModelAttribute User user) {
		service.saveUser(user); // id
		return "redirect:/allUsers";
	}

	@GetMapping("/update/{id}")
	public String updateUser(@PathVariable Long id, Model model) {
		User user = service.get(id);
		model.addAttribute("user", user);
		return "updateUser";
	}

	@GetMapping("/delete/{id}")
	public String deleteUser(@PathVariable Long id) {
		service.deleteUser(id);
		return "redirect:/allUsers";
	}
}
