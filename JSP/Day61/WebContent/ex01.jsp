<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>파일 업로드</h1>
	<hr>
	
	<%--
		enctype : 전송 데이터의 인코딩 방식을 지정. POST일때 적용된다
		1. application/x-www-form-urlencoded : 데이터를 16진수로 인코딩하여 전송 (기본값)
		2. text/plain : 데이터를 인코딩하지 않고 그냥 바로 전송. 단순 텍스트 전송에 사용
		3. multipart/form-data : 데이터를 2진수로 변경 후 전송. 주로 파일 전송시 사용
	 --%>
	
	<form action="ex01_result.jsp" method="POST" enctype="multipart/form-data">
		<p><input name="memo" placeholder="단순 텍스트"></p>
		<p><input name="upload" type="file"></p>
	
		<button>전송</button>
	</form>
	
	<hr>
	
	
	<%
		File upDir = new File(pageContext.getServletContext().getRealPath("/upload"));
		pageContext.setAttribute("list", upDir.list());
	%>
	
	<h4>업로드 목록</h4>
	
	<ul>
		<c:forEach var="f" items="${list }">
			<li><a href="upload/${f }" download>${f }</a></li>
		</c:forEach>
	</ul>

</body>
</html>