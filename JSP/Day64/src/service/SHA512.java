package service;

import java.math.BigInteger;
import java.security.MessageDigest;

public class SHA512 {
	
	// 클래스에서 메서드를 바로 쓰려면 static이 필요함
	public static String getHash(String userpw) {
		
		try {
			MessageDigest md = MessageDigest.getInstance("sha-512");
			md.reset();
			
			md.update(userpw.getBytes());
			
			String hash = String.format("%0128x", new BigInteger(1, md.digest()));
			
			return hash;
					
		} catch (Exception e) {
			System.out.println("해시 예외 : " + e.getMessage());
		}
		
		return null;
		
	}
	
}
