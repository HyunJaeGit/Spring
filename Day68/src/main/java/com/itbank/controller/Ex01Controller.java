package com.itbank.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Ex01Controller {

	@GetMapping("/ex01")
	public void ex01() {}
	

	@PostMapping("/ex01") 
	public ModelAndView ex01(String name, int age){
		ModelAndView mav = new ModelAndView();
		
//		System.out.println(name);
//		System.out.println(age);
		
		String msg = name + "님은 ";
		msg += age >= 19 ? "성인" : "미성년";
		msg += " 입니다";
		
		mav.addObject("msg", msg);
		mav.setViewName("ex01_result");
		
		
		return mav;
	}

	@GetMapping("/ex02")
	public void ex02() {}
	
	@PostMapping("/ex02")
	public ModelAndView ex02(@RequestParam Map<String, Object> data) {

		String sage = (String) data.get("age");
		int age = Integer.parseInt(sage);
		String msg = data.get("name") + "님은 ";
		msg += age >= 19 ? "성인" : "미성년자";
		msg += " 입니다";
		
		ModelAndView mav = new ModelAndView("ex01_result");
		mav.addObject("msg", msg);
		
		return mav;
	}
	
	/*
		1. Controller 반환형
		- void : 요청한 URL이 viewName이 된다
		- String : 반환한 문자열이 viewName이 된다
		- ModelAndView : ModelAndView에 지정된 viewName을 사용한다
		
		2. Controller 매개변수
		- request : JSP에서 사용하던 request
		- Model : request 대신에 Attribute를 제공
		- Parameter와 동일한 이름의 매개변수 : 동일한 이름에 저장된다
		- VO 객체 : 동일한 이름의 필드에 저장된다
		- Map : 모든 파라미터를 받을 수 있다. 단 @RequestParam 이노테이션 필요
		
	 */
	


	
	
	
	
}
