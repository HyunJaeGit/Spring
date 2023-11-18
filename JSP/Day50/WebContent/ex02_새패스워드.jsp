<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<%
		Random ran = new Random();
		String chs = "abcdefghijklmnopqrstuvwxyz0123456789";	
	
		String newPw = "";
		
		for (int i = 1; i <= 6; i++) {
			int n = ran.nextInt(chs.length());	// 0 ~ 35 범위 (36개)

			newPw += chs.charAt(n);
		}
	%>
	
	<h1>무작위 패스워드 생성1</h1>
	<hr>
	
	<ol>
		<li>패스워드 길이를 정한다. ex) 6자, 8자</li>
		<li>어떤 문자들을 사용할지 결정한다. ex) 문자, 숫자, 특문</li>
		<li>어떻게 랜덤으로 뽑을건가</li>
	</ol>
	
	<h4>새 패스워드 : <%=newPw %></h4>
	
</body>
</html>