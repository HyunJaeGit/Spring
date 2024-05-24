package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.ReplyVO;
import com.itbank.service.ReplyService;

@Controller
@RequestMapping("/reply")
public class ReplyController {

	@Autowired
	private ReplyService rs;
	
	@GetMapping("/write")
	public void write() {}

	@PostMapping("/write")
	public ModelAndView write(ReplyVO input) {
		ModelAndView mav = new ModelAndView("msg");
		int row = rs.insertRep(input);
		
		mav.addObject("row", row);
		mav.addObject("message", "작성완료");
		
		return mav;
	}

	@GetMapping("/delete")
	public String delete(int idx) {
		rs.delete(idx);
		return "redirect:/";
	}





}
