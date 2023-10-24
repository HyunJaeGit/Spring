<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05.jsp</title>
<style>
	.red { color: red; }
	.purple {color: purple; }
</style>
</head>
<body>
	<h1>실행부</h1>
	<hr>
	
	<h4>스크립틀릿은 끊어서 사용 가능</h4>
	
	<% for (int i = 1; i <= 5; i++) { %>
		
		<p class="red">Hello World!!!</p>
		<p> <%=i %> : Hello JS!!!</p>
	<% } %>
	
	<%
		for (int i = 5; i>0; i--) {
			out.println("<p class=\"purple\">" + i + " : Hello JSP~~~</p>");
		}
	%>
	<ul>
		<li></li>
		
	</ul>
	
</body>
</html>