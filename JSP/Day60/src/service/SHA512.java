package service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA512 {
	public static String getHash(String userpw) throws NoSuchAlgorithmException {
		
		MessageDigest md = MessageDigest.getInstance("SHA-512");
		
		md.reset();
		md.update(userpw.getBytes());
		
		String hash = String.format("%0128x", new BigInteger(1, md.digest()));
		
		return hash;
	}
}
