<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex07.jsp</title>
</head>
<body>
	<h1>Parameter</h1>
	<hr>
	
	<h4>다른 페이지나 클라이언트가 전송하는 데이터</h4>
	
	<ul>
		<li>JSP, ASP, Node.js, PHP, Python 등의 언어로 처리가능</li>
		<li>GET 방식일 땐 URL에 ?뒤에 저장되어 전송</li>
		<li>POST 방식일땐 HTTP Header에 인코딩 되어 전송</li>
	</ul>
	
	<form action="Ex07_result.jsp" method="get">
		<!-- action은 파라미터를 전송 페이지 혹은 사이트 -->
		<!-- method는 요청메서드 설정. GET, POST만 사용가능, 기본값은 GET -->
		
		<p><input name="name" type="text" placeholder="이름"></p>
		<p><input name="age" type="number" placeholder="나이"></p>
		
		<button>전송</button>
	</form>
</body>
</html>