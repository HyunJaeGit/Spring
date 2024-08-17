package di;

import org.springframework.context.support.GenericXmlApplicationContext;
import beans.Toy;

/*
	Spring Framework 특징
	1. 경량 컨테이너로서 자바 객체를 직접 관리 (= Spring bean)
	2. DI 및 IoC, AOP를 지원
	3. 영속성과 관련된 다양한 서비스를 지원
	4. 확장성과 유지보수성이 높다
	
	DI (Dependency Injection)
	- 객체에 필요한 의존성을 채워주는 방식
	- 스프링 컨테이너에 스프링 빈을 요청시 필요한 의존성을 해결해 줌
	
	IoC (Inverse of Control)
	- 실행의 '주'가 개발자가 아닌 프레임 워크가 된다
	- Spring이 우리가 만든 코드를 호출해서 프로그램을 실행
	
	AOP (Aspect Oriented Programmin)
	- 관점 지향 프로그래밍
	- 서비스들 간의 중복을 막기 위해서 동일한 관심사를 묶어서 처리하는 기법
	- 공통된 부분을 좀 더 수월하게 처리 가능
*/

public class Ex02 {
	public static void main(String[] args) {
		
		GenericXmlApplicationContext gac = new GenericXmlApplicationContext("classpath:appCtx.xml");
		
		Toy t1 = gac.getBean(Toy.class);			// 지정 클래스와 동일한 객체를 꺼내준다
		Toy t2 = gac.getBean("toy", Toy.class);		// 만약 동일한 클래스가 여럿이면 id로 구별 가능
		
		Toy t3 = new Toy();
		
		System.out.println("t1 = " + t1);			// 스프링 빈은 기본적으로 싱글톤으로 관리된다
		System.out.println("t2 = " + t2);			// 따라서, 빈을 꺼낼 때 마다 동일한 객체임을 확인 가능
		System.out.println("t3 = " + t3);
		
		
		t1.run();
		t2.run();
		t3.run();
		
		gac.close();
	}
}
