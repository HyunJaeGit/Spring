<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex03.jsp</title>
</head>
<body>
	<h1>Java Beans</h1>
	<hr>
	
	<h4>Java Application에서 data를 주고받기 위한 객체를 의미</h4>
	
	<form action="Ex03_result.jsp" method="POST">
		<p><input name="name2" placeholder="이름" required></p>
		<p><input name="age" type="number" placeholder="나이" required></p>
		<p><input name="height" type="number" step="0.1" placeholder="신장" required></p>
		
		<button>전송</button>
	</form>
	
</body>
</html>