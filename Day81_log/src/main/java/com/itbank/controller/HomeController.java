package com.itbank.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itbank.service.TestService;

@Controller
public class HomeController {

	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private TestService ts;
	
	@GetMapping("/")
	public String home() {
		
		log.error("로그 : Error");
		log.warn("로그 : Warnning");
		log.info("로그 : Information");
		log.debug("로그 : Debug");
		log.trace("로그 : trace");
		
		return "home";
	}
	
	@GetMapping("/ex01")
	public void ex01(Model model) {
		log.trace("실행 완료~");
		model.addAttribute("ver", ts.test());
	}
}
