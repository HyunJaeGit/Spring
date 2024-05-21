<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_result.jsp</title>
</head>
<body>
	<h1>ex03</h1>
	<h4> - [Controller(@Autowired) - Service(getGrade()) - View(result)]</h4>
	<hr>
	
	<h4>Ex03Controller - Service 결과</h4>
	<ul>
		<li>이름 : ${param.name }</li>
		<li>점수 : ${param.score }</li>
		<li>등급 : ${grade }</li>
	</ul>
	
</body>
</html>