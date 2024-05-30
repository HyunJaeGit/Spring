package com.itbank.aop;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;


/*
	AOP : Aspect Object Programming
	- 관점 지향 프로그래밍
	- 문제를 바라보는 관점을 기준으로 프로그래밍 하는 기법을 의미
	- 쉽게는 공통적인 관심사를 묶어서 처리 "횡단관심사"
	- 주로 Service 위치에서 활용한다
	(Spring을 쓰는 이유 : DI, IoC, AOP 3가지를 유용)
	
	POJO : Java로 생성하는 순수한 객체를 뜻한다. 
	- 객체 지향적인 원리에 충실하면서 환경과 기술에 종속되지 않고, 
	- 필요에 따라 재활용될 수 있는 방식으로 설계된 오브젝트를 의미한다. 
*/
@Aspect
@Component
public class TestAOP {

	// 지정한 모듈(클래스나 메서드)가 실행되기 전에 먼저 수행
	@Before("execution(* com.itbank.service..*.*(..))")
	public void start() {
		System.out.println("실행~");
	}
	
	
}











