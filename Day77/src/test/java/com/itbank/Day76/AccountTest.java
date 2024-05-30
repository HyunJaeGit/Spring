package com.itbank.Day76;

import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.itbank.components.SHA512;
import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class AccountTest {

	@Autowired private AccountService as;
	@Autowired private AccountDAO dao;
	@Autowired private SHA512	hash;
	
	
	private AccountVO testAcc;
	
	@Before
	public void setup() {
		testAcc = dao.test(1002);
	}
	
	@Test
	public void testGetAccounts() {
		List<AccountVO> list = as.getAccounts();
		assertNotNull(list);
	}


	@Test
	public void testSignUp() {
		testAcc.setUserid("testCase123123");
		testAcc.setNick("테스트시 삭제 후 진행");
		
		int row = 0;
		
		try {
			row = as.signUp(testAcc);
		} catch(DuplicateKeyException e) {}
		
		assertNotEquals("이미 있는 계정", 0, row);
	}
	
	@Test
	public void testGetHash() {
		System.out.println("hash = " + hash);
		assertNotNull(hash);
	}
	
}
