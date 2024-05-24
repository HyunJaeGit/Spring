package com.itbank.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.conponents.Paging;
import com.itbank.model.BoardDAO;
import com.itbank.model.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	
	public String getVersion() {
		return dao.test();
	}

	public Map<String, Object> getBoards(Integer idx) {
		idx = idx == null ? 1 : idx;
		
		// 페이징 코드 작성
		Paging p = new Paging(idx, dao.totalBoard());
		List<BoardVO> list = dao.selectAll(p);
		
		// 타입이 다른 객체를 묶어서 반환하기 위해 Map을 사용
		Map<String, Object> result = new HashMap<>();
		
		result.put("p", p);
		result.put("list", list);
		
		return result;
	}
	
	public BoardVO getBoard(int idx) {
		return dao.selectOne(idx);
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
	public void counting(int idx) {
		dao.viewUpdate(idx);
	}



}
