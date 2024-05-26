package com.itbank.service;

import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.stereotype.Service;

@Service
public class LottoService {

	public Set<Integer> getLotto() {
		TreeSet<Integer> ts = new TreeSet<>();
		Random rd = new Random();
		int n;
		
		while (ts.size() != 6) {
			n = rd.nextInt(45) + 1;
			ts.add(n);
		}
		
		return ts;
	}

}
