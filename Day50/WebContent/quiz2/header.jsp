<%@page import="beans.AccountDTO"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITBANK</title>

<link rel="stylesheet" href="../css/style.css">
<script src="../js/message.js"></script>
</head>
<body>
	<%--
		Day49에 있는 Account의 기능을 모두 다시 구현
		단, DBCP를 사용한다
	 --%>
	
	<%
		AccountDAO dao = new AccountDAO();
		AccountDTO user = (AccountDTO) session.getAttribute("user");
		String login = "logout";
		
		if (user == null) {
			user = new AccountDTO();
			user.setNick("x");
			
			login = "login"; 
		}
	%>
	 
	<h1>Quiz</h1>
	
	<nav>
		<ul class="menu">
			<li><a href="home.jsp">home</a></li>
			<li><a href="<%=login %>.jsp"><%=login %></a></li>
			<li><a href="signup.jsp">signUp</a></li>
			<li><a href="mypage.jsp">myPage</a></li>
		</ul>
		
		<h4>접속 : <%=user.getNick() %></h4>
	</nav>
	
	<hr>

</body>
</html>