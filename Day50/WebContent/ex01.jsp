<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%
		DAO dao = new DAO();
		String banner = dao.test();
	%>


	<h1>DBCP</h1>
	<hr>
	
	<ul>
		<li>DB Connection Pooling</li>
		<li>DB Connect을 효율적으로 처리하는 라이브러리</li>
		<li>서버 실행시 일정량의 Connection을 생성해 두고</li>
		<li>DB 연결이 필요할 때 바로 꺼내서 연결을 시켜준다</li>
		<li>그 후 사용이 끝나면 다시 반납 받아서 보관</li>
	</ul>
	
	<h5><%=banner %></h5>

</body>
</html>