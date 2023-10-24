<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex04.jsp</title>
</head>
<body>
	<h1>응답 response</h1>
	<hr>
	
	<%
		// 응답은 서버가 클라이언트에 통신하는 방식을 의미
		// JSP에서는 이 응답을 response라는 내장객체로 이미 제공 중
		// 주로, 쿠키, 리다이렉트 메세지, 에러코드 등에 사용
		
		// response.sendError(401);
		response.sendRedirect("Ex01.jsp");
		
	
	 %>
</body>
</html>