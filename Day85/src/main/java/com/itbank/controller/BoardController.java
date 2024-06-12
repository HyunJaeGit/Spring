package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.model.vo.BoardVO;
import com.itbank.model.vo.BookVO;
import com.itbank.service.BoardService;


@RestController
@RequestMapping("/board")
public class BoardController {

	@Autowired private BoardService bs;
	
	@GetMapping
	public List<BoardVO> getBoards() {
		
		return bs.getBoards();
	}
	@GetMapping("/{idx}")
	public BookVO getBoard(@PathVariable int idx) {
		return bs.getBoard(idx);
	}
	
	@PostMapping
	public int addBoard(@RequestBody(required = false) BoardVO input) {
		
		if (input == null) {
			input = new BoardVO();
		}
		return bs.addBoard(input);
	}
	@PutMapping
	public int update(@RequestBody BoardVO input) {
		return bs.update(input);
	}
	@PatchMapping
	public int updateTitle(@RequestBody BoardVO input) {
		return bs.updateTitle(input);
	}
	@DeleteMapping
	public int delete(@RequestBody BoardVO input) {
		return bs.delete(input.getIdx());
	}
}
