package com.itbank.components;

import java.math.BigInteger;
import java.security.MessageDigest;

import org.springframework.stereotype.Component;

@Component
public class SHA512 {

	public String getHash(String userpw) {
		
		try {
			MessageDigest md = MessageDigest.getInstance("sha-512");
			
			md.reset();
			md.update(userpw.getBytes());
			
			String hash = String.format("%0128x", new BigInteger(1, md.digest()));
			
			return hash;
			
		} catch (Exception e) {}
		
		
		return null;
	}
	
	
}
