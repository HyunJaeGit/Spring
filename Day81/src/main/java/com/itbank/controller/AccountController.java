package com.itbank.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
	private AccountService as;
	
	private ModelAndView setMSG (int row, String msg, String location) {
		ModelAndView mav = new ModelAndView("msg");
		
		mav.addObject("row", row);
		mav.addObject("msg", msg);
		mav.addObject("location", location);
		
		return mav;
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	@PostMapping("/login")
	public ModelAndView login(AccountVO input, HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/");
		AccountVO user = as.login(input);

		
		// 로그인성공시 세션에 유저 닉네임 저장
		if (user != null) {
			session.setAttribute("user", user.getNick());
		}
		
		return mav;
	}
	@GetMapping("/signOut")
	public String signOut(HttpSession session) {
		
		session.removeAttribute("user");
		
		return "redirect:/";
	}
	
	@GetMapping("/signUp")
	public void signUp() {
		
	}
	@PostMapping("/signUp")
	public ModelAndView signUp(AccountVO input) {
		int row = as.insert(input);
		String msg = "회원가입을 축하합니다 로그인시 회원가입";
		String location = "account/signIn"; 
		
		return setMSG(row, msg, location);
	}
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("userlist", as.selectAll());
		
		return mav;
	}
	
	@GetMapping("/delete")
	public ModelAndView delete(int idx) {
		int row = as.delete(idx);
		
		return setMSG(row, "회원탈퇴 완료", "redirect:/");
	}

	
}
