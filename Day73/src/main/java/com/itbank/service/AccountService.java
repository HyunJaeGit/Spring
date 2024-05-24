package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.AccountDAO;

@Service
public class AccountService {

	@Autowired
	private AccountDAO dao;
	
	
}
