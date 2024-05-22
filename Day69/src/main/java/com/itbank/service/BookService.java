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
	
	// 책 전체 목록을 가져옴
	public List<BookVO> getBooks() {
		return dao.selectAllBooks();
	}
	// 새로운 책 정보를 추가
	public int addBook(BookVO input) {
		return dao.insert(input);
	}
	
	public BookVO getBook(int idx) {
		return dao.selectOne(idx);
	}

	public int updateBook(BookVO input) {
		return dao.update(input);
	}
	public int deleteBook(int idx) {
		return dao.delete(idx);
	}
}
