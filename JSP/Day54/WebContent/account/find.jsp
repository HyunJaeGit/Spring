<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<h4>ID 찾기</h4>

	<form action="findID.jsp" method="POST">
		<p><input name="email" placeholder="이메일" required></p>

		<button>find</button>
	</form>
	
	
	<h4>PW 찾기</h4>
	
	<form action="findPW.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="email" placeholder="이메일" required></p>

		<button>find</button>
	</form>
	
	<%
		String newPw = UUID.randomUUID().toString().substring(0,6);
	
		System.out.println(newPw);
	%>
	
</body>
</html>