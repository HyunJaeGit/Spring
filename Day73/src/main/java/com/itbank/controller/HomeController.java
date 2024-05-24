package com.itbank.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.ReplyVO;
import com.itbank.service.BoardService;
import com.itbank.service.ReplyService;

@Controller
public class HomeController {
	
	@Autowired
	private BoardService bs;
	@Autowired
	private ReplyService rs;
//	@GetMapping("/")
//	public ModelAndView home(int idx) {
//		System.out.println("idx = " + idx);
//		
//		ModelAndView mav = new ModelAndView();
//		
//		mav.addObject("ver", bs.getVersion());
//		mav.addObject("list", bs.getBoard());
//		mav.setViewName("home");
//		
//		return mav;
//		
//	}
	
	@GetMapping(value = {"/", "/{idx}"})
	public ModelAndView home(@PathVariable(required = false) Integer idx) {
		// @required의 기본값은 true
		// - idx에 무조건 값이 전달되어야 한다
		
		System.out.println("idx = " + idx);
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> result = bs.getBoards(idx);
		
		mav.addObject("ver", bs.getVersion());
		mav.addObject("list", result.get("list"));
		mav.addObject("p", result.get("p"));
		
		mav.setViewName("home");
		
		return mav;
		
	}

	
}
