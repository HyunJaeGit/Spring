<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<%
		String pw = "it12";
		String hash;
		MessageDigest md = MessageDigest.getInstance("SHA-512");

		md.reset();					// getInstance()는 최초에 할당된 하나의 메모리를 계속쓰기때문에
		md.update(pw.getBytes());	// 이전 해시값이 남아 있을 수 있어서, 리셋을 한번 해준다.
		
		hash = String.format("%0128x", new BigInteger(1, md.digest()));
		
		System.out.println(hash);
	%>


	<h1>Hash 처리	</h1>
	<hr>
	<p><%=pw %></p>
	<p><%=pw.getBytes() %></p>
	<p><%=md %></p>
	<p><%=hash %></p>
	<ul>
		<li>해시란 데이터의 무결성을 검증하기 위한 방식을 의미</li>
		<li>암호화 알고리즘에도 사용한다</li>
		<li>항상 동일한 길이의 16진수 문자열을 생성하고</li>
		<li>다시 원상태로 복구할 수 없어야 한다(= 일방향성)</li>
	</ul>
	
	<ul>
		<li>원본(128자) : <%=hash %></li>
		<li>자름(6자) : <%=hash.substring(0, 6) %></li>
	</ul>

</body>
</html>