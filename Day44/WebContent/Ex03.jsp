
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex03.html</title>
</head>
<body>
	
	<h1>지시자</h1>
	<hr>
	
	<%@page import="java.util.Date"%>
	<%@page import="java.text.SimpleDateFormat"%>
	
	<%
		Date date = new Date();
		//	참조변수		생성자 함수
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 a HH:mm:ss E요일");
		// camelcase 표기법
		
		String time = sdf.format(date);
		
	%>
	
	<ul>
				<!-- toString이 override 되어있음 -->
		<li>date = <%=date %></li>
		<li>time = <%=time %></li>
	</ul>
</body>
</html>