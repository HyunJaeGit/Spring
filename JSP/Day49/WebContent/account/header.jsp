<%@page import="beans.AccountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day49</title>

<link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<jsp:useBean id="dao" class="model.AccountDAO"/>
	
	<%
		AccountVO user = (AccountVO) session.getAttribute("user");
		String login = "logout";
		String myPage = "myPage";
	
		if (user == null) {
			user = new AccountVO();
			user.setNick("x");
			
			login = "login";
			myPage = "";
		}
	%>

	<h1>Account 테이블</h1>
	
	<nav>
		<ul class="menu">
			<li><a href="home.jsp">home</a></li>
			<li><a href="<%=login %>.jsp"><%=login %></a></li>
			<li><a href="signUp.jsp">signUp</a></li>
			<li><a href="<%=myPage %>.jsp"><%=myPage %></a></li>
		</ul>
		
		<h4>
			접속 : <%=user.getNick() %>
		</h4>
	</nav>
	
	<hr>