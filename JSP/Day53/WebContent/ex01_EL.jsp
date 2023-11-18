<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>EL</h1>
	<hr>
	
	<ul>
		<li>Expression Language</li>
		<li>표현 언어, 기존의 표현식 &lt;%= %> 를 대체하기 위해서 고안</li>
		<li>기존 표현식은 자바 변수에 접근을 할 수 있지만 Attribute 접근이 불편하다</li>
		<li>이를 개선하기 위해서 EL이 고안되고 JSP 2.0 이후부터 기본으로 장착되어 있다</li>
		<li>
			EL은 Attribute 접근시<br>
			pageContext -> request-> session-> application <br>
			순으로 자동으로 탐색
		</li>
		<li>EL은 뒤에 배울 JSTL과 같이 사용시 시너지가 좋다</li>
	</ul>

</body>
</html>