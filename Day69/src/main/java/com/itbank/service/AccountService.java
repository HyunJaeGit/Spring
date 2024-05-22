package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.components.SHA512;
import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVO;

@Service
public class AccountService {
	
	@Autowired
	private AccountDAO dao;
	
	@Autowired
	private SHA512 hash;
	

	public String getVersion() {
		return dao.test();
	}
	public List<AccountVO> getAccounts() {
		
		return dao.selectAll();
	}
	public AccountVO getAccount(int idx) {
		
		return dao.selectOne(idx);
	}
	public int write(AccountVO input) {
		// 암호 해쉬처리하는 기능
		String pw = hash.getHash(input.getUserpw());
		input.setUserpw(pw);
		
		return dao.insert(input);
	}
	
	public int update(AccountVO input) {
		// 암호 해쉬처리하는 기능
		String pw = hash.getHash(input.getUserpw());
		input.setUserpw(pw);
		
		return dao.update(input);
	}
	
	public int delete(int idx) {
		
		return dao.delete(idx);
	}

	
}
