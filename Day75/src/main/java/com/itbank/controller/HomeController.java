package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itbank.service.BookService;
import com.itbank.service.LottoService;

@Controller
public class HomeController {
	
	@Autowired
	private LottoService ls;
	@Autowired
	private BookService bs;
	
	@GetMapping("/")
	public String home(Model model) {
		
		model.addAttribute("lottos", ls.getLotto());
		model.addAttribute("test", bs.test());
		return "home";
	}
	
}
