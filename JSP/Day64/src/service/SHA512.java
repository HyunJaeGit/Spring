package service;

import java.math.BigInteger;
import java.security.MessageDigest;

public class SHA512 {
	
	// Ŭ�������� �޼��带 �ٷ� ������ static�� �ʿ���
	public static String getHash(String userpw) {
		
		try {
			MessageDigest md = MessageDigest.getInstance("sha-512");
			md.reset();
			
			md.update(userpw.getBytes());
			
			String hash = String.format("%0128x", new BigInteger(1, md.digest()));
			
			return hash;
					
		} catch (Exception e) {
			System.out.println("�ؽ� ���� : " + e.getMessage());
		}
		
		return null;
		
	}
	
}
