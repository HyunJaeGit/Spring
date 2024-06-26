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

	public List<BoardVO> selectAll() {
		
		return dao.selectAll();
	}

	public BoardVO getBoard(int idx) {
		return dao.selectOne(idx);
	}

	public int addBoard(BoardVO input) {
		return dao.insert(input);
	}
	
	
	
}
