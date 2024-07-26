<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07_result.jsp</title>
</head>
<body>
	<h1>결과</h1>
	<hr>
	
	<ul>
		<li>page 		: ${p1 }</li>
		<li>request 	: ${p2 }</li>
		<li>session 	: ${p3 }</li>
		<li>application : ${p4 }</li>
	</ul>
	
	<a href="ex07.jsp">돌아가기</a>
</body>
</html>