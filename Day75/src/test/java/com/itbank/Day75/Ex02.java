package com.itbank.Day75;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class Ex02 {

	/*
						setNum().run1()
		setShare()		setNum().run2()			resultShare()
						setNUm().run3()
	*/
	
	private int num;
	private static int share;
	
	@BeforeClass
	public static void setShare() {
		share = 10;
	}
	
	@Before
	public void setNum() {
		num = 10;
	}
	
	@Test
	public void run1() {
		System.out.println("\nrun1");
		share -= 2;
		num -= 2;
	}	
	
	@Test
	public void run2() {
		System.out.println("\nrun2");
		share -= 6;
		num -= 6;
	}
	
	@Test
	public void run3() {
		System.out.println("\nrun2");
		share -= 1;
		num -= 1;
	}
	@AfterClass
	public static void resultShare() {
		System.out.println("share = " + share);
	}
	
	@After
	public void result() {
		System.out.println("num = " + num);
	}
	
}
