package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.BoardVO;
import com.itbank.model.vo.ReplyVO;
import com.itbank.service.BoardService;
import com.itbank.service.ReplyService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService bs;
	
	@Autowired
	private ReplyService rs;
	
	@GetMapping("/view")
	public ModelAndView view(int idx){
		ModelAndView mav = new ModelAndView();
			
		bs.counting(idx);
		List<ReplyVO> replys = rs.getReplys(idx);
		
		mav.addObject("row", bs.selectOne(idx));
		mav.addObject("replyAll", rs.replyAll(idx));
		mav.addObject("reCount", replys.size());
		
		mav.setViewName("board/view");
		return mav;
	}
	@GetMapping("/write")
	public void add() {}

	@PostMapping("/write")
	public ModelAndView add(BoardVO input) {
		ModelAndView mav = new ModelAndView("msg");
		int row = bs.BoardInsert(input);
		
		mav.addObject("row", row);
		mav.addObject("message", "작성완료");
		
		return mav;
	}
	
	@GetMapping("/update/{idx}")
	public ModelAndView update(@PathVariable int idx) {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("row", bs.selectOne(idx));
		mav.setViewName("board/write");
		return mav;
	}
	
	@PostMapping("/update/{idx}")
	public ModelAndView update(BoardVO input) {
		ModelAndView mav = new ModelAndView("msg");
		
		mav.addObject("row", bs.update(input));
		mav.addObject("message", "수정 완료");
		
		bs.update(input);
		return mav;
	}

	@GetMapping("/delete/{idx}")
	public ModelAndView delete(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("msg");
		
		mav.addObject("row", bs.delete(idx));
		mav.addObject("message", "삭제 완료");
		
		return mav;
	}
	

	
	
	// 예외는 보통 service나 dao에서 발생
	// 여기서 발생한 예외는 보통 controller까지 전가가 된다
	// controller에서 예외를 처리하지 않으면 에러 페이지가 출련된다
	
	// '현재 컨트롤러'에서 발생하는 예외를 처리할 메서드를 지정
//	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
//	public ModelAndView ex() {
//		ModelAndView mav = new ModelAndView("msg");
//
//		mav.addObject("row", 0);
//		mav.addObject("message", "작성 실패");
//		
//		return mav;
//	}
	
	
	
	
	
}
