package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.beans.PersonVO;

@Controller
@RequestMapping("/ex05")
public class Ex05Controller {

	@GetMapping("/test1")
	public void test1() {}
	
	@PostMapping("/test1")
	public String test1(Model model, PersonVO per) {
						// String 자료형으로 받으면 매개변수가 길어짐 
						//	- 그래서 ModelAndView를 사용하면 매개변수를 줄일수있음(취향)
		String msg = per.getName() + "님은 ";
		msg += per.getAge() >= 19 ? "성인" : "미성년자";
		msg += " 입니다";
		
		model.addAttribute("msg", msg);
		
		return "ex05/test_result";
	}
	
	@GetMapping("/test2")
	public void test2() {}
	
	
	@PostMapping("/test2")
	public ModelAndView test2(PersonVO per) {
	
		ModelAndView mav = new ModelAndView();
		// model과 view를 한번에 설정 가능한 객체(클래스) - model은 인터페이스
		
		String msg = per.getName() + "님은 ";
		msg += per.getAge() >= 19 ? "성인" : "미성년자";
		msg += " 입니다";
		
		mav.addObject("msg", msg);
		mav.setViewName("ex05/test_result");
		
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
