package com.itbank.model;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BookDAOTest {

	@Autowired
	private BookDAO dao;
	
	@Test
	@Ignore
	public void connectionTest() {
		System.out.println("dao = " + dao);
		System.out.println("banner = " + dao.test());
	}
	
	@Test
	@Ignore			// 테스트를 위해 작성했지만 후 테스트에서 제외하려는 경우 사용
	public void ignore() {
		System.out.println("Test 실행에서 제외~");
	}
	
}
