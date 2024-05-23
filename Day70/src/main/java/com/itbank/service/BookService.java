package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BookDAO;
import com.itbank.model.vo.BookVO;

@Service
public class BookService {

	@Autowired
	private BookDAO dao;
	
	public String getVer() {
		return dao.test();
	}

	public List<BookVO> getBooks() {
		return dao.selectAll();
	}

	public int addBook(BookVO input) {
		return dao.insert(input);
	}
	public int deleteBook(int idx) {
		return dao.delete(idx);
	}

	public int updateBook(BookVO input) {
		return dao.update(input);
	}
	
	public BookVO getBookOne(int idx) {
		return dao.selectOne(idx);
	}
	
}
