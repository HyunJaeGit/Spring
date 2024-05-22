package com.itbank.components;

import java.math.BigInteger;
import java.security.MessageDigest;

import org.springframework.stereotype.Component;


// Component : MVC 패턴에 필요한 객체(빈) 은 아니지만 스프링 빈으로 등록할 때 사용하는 어노테이션
@Component
public class SHA512 {
	
	 public String getHash(String userpw) {
		 
		 try {
			MessageDigest md = MessageDigest.getInstance("sha-512");
			
			md.reset();
			md.update(userpw.getBytes());
			
			String pw = String.format("%0128x", new BigInteger(1, md.digest()));
			
			return pw;
			 
		} catch (Exception e) {}
		 
		 
		 return null;
	 }
	
}
