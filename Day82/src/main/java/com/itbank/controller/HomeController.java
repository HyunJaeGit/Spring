package com.itbank.controller;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.FileVO;
import com.itbank.service.FileService;

@Controller
public class HomeController {
	
	@Autowired
	private FileService fs;
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	// private Logger log = LoggerFactory.getLogger(get.class());

	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@PostMapping("/")
	public String home(MultipartFile upload) {
		/** 로깅
		log.trace("타입 : " + upload.getContentType());
		log.trace("이름1 : " + upload.getName());
		log.trace("이름2 : " + upload.getOriginalFilename());
		log.trace("용량 : " + upload.getSize());
		*/
		return "home";
	}

	// 1) servlet resources 참조 경로에서 파일 목록 불러오기
	@GetMapping("/ex01")
	public void ex01(Model model) throws IOException {
		
		model.addAttribute("dir", fs.getDir());
		
	}
	
	// 2) 파일 업로드
	@PostMapping("/ex01")
	public String ex01(MultipartFile upload) throws IOException {
		fs.fileUpload(upload);
		
		return "redirect:/ex01";
	}

	@GetMapping("/ex02")
	public ModelAndView ex02() throws IOException {
		ModelAndView mav = new ModelAndView("ex02");
		
		mav.addObject("dir", fs.getDir());
		return mav;
	}
	
	// 3) 이름지정하고 업로드
	@PostMapping("/ex02")
	public String ex02(MultipartFile upload, String name) throws IOException {
	
		System.out.println(upload.getName());
		System.out.println(upload);
		
		fs.fileUpload(upload);
		
		return "redirect:/ex02";
	}

	
	// 4) DB에 업로드
	@GetMapping("/ex03")
	public void ex03() {
		
	}
	@PostMapping("/ex03")
	public String ex03(FileVO input) throws IOException {
//		System.out.println("input = " + input);
//		System.out.println("uploader = " + input.getUploader());
//		System.out.println("memo = " + input.getMemo());
//		System.out.println("upload = " + input.getUpload());
		
		fs.fileUpload(input);
		
		return "redirect:/ex03";
	}

}
