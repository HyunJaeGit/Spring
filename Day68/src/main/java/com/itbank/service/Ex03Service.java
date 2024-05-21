package com.itbank.service;

import org.springframework.stereotype.Service;

@Service
/* @Service
	- controller는 servlet-context에서 관리됨
	- service 같이 요청과 관련 없는 데이터들은 root-context에 저장되어있다. 
 		-> root-context에서 NameSpace를 누르고 
 		--> context-component를 추가, service를 추가해주자
*/
public class Ex03Service {

	public char getGrade(int score) {
		char rank = 'F';
		
		if (score >=90)			rank = 'A';
		else if (score >=80)	rank = 'B';
		else if (score >=70)	rank = 'C';
		else if (score >=60)	rank = 'D';
		
		return rank;
	}


	
}
