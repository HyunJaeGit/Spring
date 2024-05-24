package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.BoardVO;
import com.itbank.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService bs;
	
	@GetMapping("/view")
	public ModelAndView view(int idx){
		ModelAndView mav = new ModelAndView();
				
		mav.addObject("row", bs.selectOne(idx));
		mav.setViewName("board/view");
		return mav;
	}
	@GetMapping("/add")
	public void add() {}

	@PostMapping("/add")
	public String add(BoardVO input) {
		bs.create(input);
		return "redirect:/";
	}
	@GetMapping("/update")
	public ModelAndView update(int idx) {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("row", bs.selectOne(idx));
		mav.setViewName("board/add");
		return mav;
	}
	
	@PostMapping("/update")
	public String update(BoardVO input) {
		bs.update(input);
		return "redirect:/";
	}

	@GetMapping("/delete")
	public String delete(int idx) {
		bs.delete(idx);
		return "redirect:/";
	}

	
	
	
	
	
	
	
	
}
