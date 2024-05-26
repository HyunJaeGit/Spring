package com.itbank.Day75;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotSame;
import static org.junit.Assert.assertSame;

import org.junit.Before;
import org.junit.Test;

import com.itbank.model.vo.BookVO;

public class Ex03_assert_Book {

	private int[] arr1, arr2;
	private BookVO b1, b2, b3;
	
	// BookVO 에서 idx를 해시코드-equal 오버라이드해주면 값이같으면 = 같은 해시값을 가진다
	// 해시 오버라이드를 풀면 같은 데이터값을 가지더라도 해시값은 다르게 가짐
	
	
	@Before
	public void setUp() {
		arr1 = new int[] {10, 20, 30};
		arr2 = new int[] {10, 20, 30};

		b1 = new BookVO();
		b2 = new BookVO();
		b3 = b1;
		
		b1.setIdx(100);
		b2.setIdx(100);
	}
	
	@Test
	public void ex01() {
		assertArrayEquals(arr1, arr2);				// 두 배열의 요소가 일치하는지 판별
		System.out.println("실행 완료(run)");			// 기댓값이 맞으면 그대로 이어서 메서드 수행
	}
	
	@Test
	public void ex02() {
		arr2[2] = 33;
		
		assertArrayEquals("error메세지",arr1, arr2);	// 두 배열의 요소가 달라서 Failures 발생
		System.out.println("실행?(Failures");		// 발생 후의 코드는 실행되지 않음
	}
	
	@Test
	public void ex03() {
		assertNotEquals(arr1[0], arr2[1]);	// 두 데이터(값)의 기대값이 달라야 실행, Failures
		
		assertNotEquals(b1, b2); 			// 'Class'는 'equals'를 구현해야 제대로 비교됨
	}
	
	@Test
	public void ex04() {
		assertSame(b1, b3);			// b1 = b3 -> 실행성공
		
		assertNotSame(b1, b2);		// b1 != b2 -> 실행 성공 
									// - BookVO에서 해시-equal 오버라이드하면 b1=b2 같아짐

		System.out.println("\nb1 = " + b1);
		System.out.println("b2 = " + b2);
		System.out.println("b3 = " + b3);
	}
	
	
	
}
