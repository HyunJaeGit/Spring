package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.Quiz1Service;

@Controller
public class Quiz1Controller {

	@Autowired
	private Quiz1Service qs;
	
	@GetMapping("/Quiz1")
	public void Quiz1() {
		
	}
	
	@PostMapping("/Quiz1")
	public ModelAndView Quiz1(int n) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("lottos", qs.getLottos(n));
		mav.setViewName("Quiz1_result");
		
		return mav;
	}
	
}
