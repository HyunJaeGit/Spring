<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02_result.jsp</title>
</head>
<body>
	<h1>Quiz02_result.jsp</h1>
	<hr>
	
	<%
		String n1 = request.getParameter("n1");
		String n2 = request.getParameter("n2");
		
		int N1 = 0, N2 = 0;
		
		// 문자열로 받으니까 정수로 맞춰줘야 함 
		// n1과 n2가 null이면 예외가 터지기때문에 null이 아닐때 실행되어야함
		if (n1 != null && n2 != null) {
			N1 = Integer.parseInt(n1);
			N2 = Integer.parseInt(n2);	
		};
		
	%>
	
	
	<ul>
		<li>n1 = <%=n1 %></li>
		<li>n2 = <%=n2 %></li>
		<li>n1 + n2 = <%=N1 + N2 %></li>
	</ul>
	
	<button onclick="history.go(-1)">뒤로</button>
	
	
</body>
</html>