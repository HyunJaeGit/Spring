package com.itbank.controller;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

//	private static final 
//	Logger logger = LoggerFactory.getLogger(Ex01Controller.class);
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
}
