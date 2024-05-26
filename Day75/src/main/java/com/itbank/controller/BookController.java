package com.itbank.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.BookVO;
import com.itbank.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {

	@Autowired
	private BookService bs;
	
	@RequestMapping(value = "/list")
	public ModelAndView list(@RequestParam Map<String, Object> param) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", bs.selectAll(param));
		
		return mav;
	}
	
	@GetMapping("/view/{idx}")
	public ModelAndView selectOne(@PathVariable int idx) {
	ModelAndView mav = new ModelAndView();
		
		mav.addObject("row", bs.selectOne(idx));
		mav.setViewName("book/view");
		return mav;
	}
	
	@GetMapping("/upload")
	public void upload() {}
	
	@PostMapping("/upload")
	public String upload(BookVO input) {
		bs.upload(input);
		return "redirect:/book/list";
	}
	
	@GetMapping("/delete/{idx}")
	public String delete(@PathVariable int idx) {
		bs.delete(idx);
		
		return "redirect:/book/list";
	}
	@GetMapping("/update/{idx}")
	public ModelAndView update(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("row", bs.selectOne(idx));
		mav.setViewName("book/upload");
		
		return mav;
	}
	@PostMapping("/update/{idx}")
	public String update(BookVO input) {
		
		bs.update(input);
		return "redirect:/book/list";
	}
	
	
}
