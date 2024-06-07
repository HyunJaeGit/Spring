package com.itbank.controller;

import org.junit.Test;

public class StringTest {

	
	@Test
	public void ex01() {
		String file = "페.이.징.txt";
		int dot = file.indexOf(".");
		int lastdot = file.lastIndexOf(".");
		
		System.out.println("파일이름 = " + file);
		System.out.println("0번째 글자 = " + file.charAt(0));
		System.out.println("앞에서부터 첫번째 .의 인덱스 = " + file.indexOf("."));
		System.out.println("끝에서부터 첫번째 .의 인덱스 = " + file.lastIndexOf("."));
		System.out.println("첫번째 콤마까지 잘라냄 = " + file.substring(dot));
		System.out.println("끝에서부터 처음만난 콤마까지 잘라냄 = " + file.substring(lastdot));
	}
}
