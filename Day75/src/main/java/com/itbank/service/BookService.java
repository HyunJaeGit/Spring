package com.itbank.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BookDAO;
import com.itbank.model.vo.BookVO;

@Service
public class BookService {

	@Autowired BookDAO dao;
	
	public String test() {
		return dao.test();
	}
	
	public List<BookVO> selectAll(Map<String, Object> param) {
		return dao.selectAll(param);
	}

	public int upload(BookVO input) {
		return dao.insert(input);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

	public BookVO selectOne(int idx) {
		return dao.selectOne(idx);
	}

	public int update(BookVO input) {
		return dao.update(input);
	}

}
