package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVO;

@Transactional
@Service
public class AccountService {

	@Autowired
	private AccountDAO dao;
	
	@Transactional(readOnly = true)		// 당연히 상세 설정이 우선시 됨
	public AccountVO login(AccountVO input) {
		return dao.selectOne(input);
	}

	public int insert(AccountVO input) {
		// dao.insert(input);
		// - 일부러 예외 발생을 위해 작성 (트랜잭션 디버깅용)
		return dao.insert(input);
	}

	public List<AccountVO> selectAll() {
		return dao.selectAll();
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

	public AccountVO getInfo(int idx) {
		return dao.getInfo(idx);
	}
}
