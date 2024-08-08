<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>
	table {
		margin-top: 10px;
		border-collapse: collapse;
	}
	th, td {
		padding: 15px;
		border: 1px solid;
	}
	a {
		text-decoration: none;
		color: black;
	}
	a:hover {
		color: red;
		font-weight: bolder;
	}
</style>
</head>
<body>
	<h1>파일 업로드</h1>
	<hr>
	
	<form action="ex01_result.jsp" method="POST" enctype="multipart/form-data">
		<p><input name="name" placeholder="파일명"></p>
		<p><input name="upload" type="file" accept="image/*" required></p>
		
		<button>업로드</button>
	</form>
	
	<!-- 파일 목록 출력 -->
	
	<%
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		File uploadEx = new File(location);
	%>
	
	<table>
		<tr>
			<th>파일명</th>
			<th>이름 변경</th>
			<th>삭제</th>
		</tr>
	<c:forEach var="f" items="<%=uploadEx.list() %>">
		<tr>
			<td>${f }</td>
			<td><a href="ex01_update.jsp?name=${f }">클릭</a></td>
			<td><a href="ex01_delete.jsp?name=${f }">클릭</a></td>		
		</tr>
	</c:forEach>
	</table>

</body>
</html>