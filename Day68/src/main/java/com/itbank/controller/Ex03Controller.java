package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.Ex03Service;

@Controller
@RequestMapping
public class Ex03Controller {
	// DI(Dependency Injection) :  의존성 주입
	@Autowired				// 아래 타입과 동일한 이름의 Spring Beans을 찾아서 인스턴스를 생성해줌
	private Ex03Service es;	// 이를 의존성 주입(DI)라고 한다
	
	
	@GetMapping("/ex03")		
	public void ex03() {		
		
	}
	
	@PostMapping("/ex03")
	public ModelAndView ex03(String name, int score) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("grade", es.getGrade(score));
		mav.setViewName("ex03_result");
		
		return mav;
	}
	
}
