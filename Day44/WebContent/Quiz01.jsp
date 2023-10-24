<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01.jsp</title>
<style>

	table {
		border-collapse: collapse;
	}

	th {
		border: 1px solid black;
	}
	td {
		border: 1px solid black;
	}
	
	
</style>
</head>
<body>
	<h1>Quiz</h1>
	<hr>
	
	<ul>
		<li>JSP로 풀어주세요~</li>
		<li>반복을 활용해서 구구단 2단을 출력해 주세요</li>
		<li>단, 테이블로 출력하고 스타일로 테두리도 출력</li>
		<li>테이블 제일 위의 행에는 현재 시간을 출력해 주세요</li>
	</ul>
	
	<%
		Date date = new Date();
		//	참조변수		생성자 함수
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
		// camelcase 표기법
		
		String time = sdf.format(date);
		
	%>
	
	<% out.write("<table>");%>
		<tr><td colspan="2">현재 시간 = <%=time %></td></tr> 
		<% for (int i=1; i<10; i++) { %>
			 <tr><th> 2 x <%= i%></th><td> =  <%= 2*i%></td></tr> 
		<% } %>
		<% out.write("</table>"); %>
			
		
	
	
</body>
</html>