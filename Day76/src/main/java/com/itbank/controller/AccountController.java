package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
	private AccountService as;
	
	@GetMapping("/list")
	public String list(Model model) {
		
		model.addAttribute("ver", as.version());
		model.addAttribute("list", as.getAccount());
		return "account/list";
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@PostMapping("/login")
	public String login(AccountVO input, HttpSession session) {
		
		input = as.login(input);
		
		if (input != null) {
			session.setAttribute("user", input);
			session.setAttribute("now_nick", input.getNick());
		}
		
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public void logout() {
		
	}
	
	@GetMapping("/signUp")
	public void insert() {
		
	}
	
	@GetMapping("/delete/{idx}")
	public void delete() {
		
	}
	
	@GetMapping("/update/{idx}")
	public void update() {
		
	}
}
