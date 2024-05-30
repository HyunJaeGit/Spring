package com.itbank.Day76;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/rootContext.xml"})
public class AccountTest {

	@Autowired private AccountService as;
	@Autowired private AccountDAO dao;
	
	private AccountVO testAcc;
	
	@Before
	public void setup() {
		testAcc = dao.test(20231011);
	}
	
	@Test
	public void testGetAccounts() {
		List<AccountVO> list = as.getAccount();
		assertNotNull(list);
	}
	@Test
	public void testLogin() {
		AccountVO user;
		
		user = as.login(testAcc);
		assertNotNull(user);
		
		System.out.println("실행?");
	}
	

}
