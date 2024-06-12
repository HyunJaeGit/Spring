package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BoardDAO;
import com.itbank.model.vo.BoardVO;
import com.itbank.model.vo.BookVO;

@Service
public class BoardService {

	@Autowired private BoardDAO dao;

	public List<BoardVO> getBoards() {
		
		return dao.selectAll();
	}

	public int addBoard(BoardVO input) {
		return dao.insert(input);
	}

	public int update(BoardVO input) {
		return dao.update(input);
	}

	public BookVO getBoard(int idx) {
		
		return dao.selectOne(idx);
	}

	public int updateTitle(BoardVO input) {
		return dao.updateTitle(input);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

	
	
	
}
