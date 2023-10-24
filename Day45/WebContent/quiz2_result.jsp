<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2_result.jsp</title>
</head>
<body>
	<%!
		Account[] acs = new Account[] {
			new Account("user1", "1", "유저1"),
			new Account("itbank", "it", "아뱅"),
			new Account("never", "green", "초록매실")
		};
	
		public Account login(Account user) {
			for (int i = 0; i < acs.length; i++) {

				if (acs[i].equals(user)) {
					return acs[i];
				}
			}
			
			return null;
		}
	%>
	
	<jsp:useBean id="user" class="beans.Account"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		user = login(user);
		String msg = "로그인 실패";
		
		if (user != null) { 
			msg = user.getNick() + "님 로그인";
		}
	%>

	<h1>결과</h1>
	<hr>
	
	<h4><%=msg %></h4>
	
</body>
</html>