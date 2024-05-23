package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BoardDAO;
import com.itbank.model.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	public String getVersion() {
		return dao.test();
	}

	public List<BoardVO> getBoard() {
		return dao.selectAll();
	}

	public int BoardInsert(BoardVO input) {
		return dao.insert(input);
	}

	public BoardVO selectOne(int idx) {
		return dao.selectOne(idx);
	}

	public int create(BoardVO input) {
		return dao.insert(input);
	}

	public int update(BoardVO input) {
		return dao.update(input);
	}

	public int delete(int idx) {
		return dao.delete(idx);
		
	}

}
