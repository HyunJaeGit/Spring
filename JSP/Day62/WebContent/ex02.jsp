<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<h1>다중 파일 업로드</h1>
	<hr>
	
	<form action="ex02_result.jsp" method="post" enctype="multipart/form-data">
		<p><input name="name" placeholder="파일명" required></p>
		<p><input name="upload" type="file" multiple required></p>
		
		<button>업로드</button>
	</form>

	<%-- 업로드 후 목록을 아래에 출력 --%>
	
	<%
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		File uploadEx = new File(location);
	%>
	
	<table>
		<tr>
			<th>파일명</th>
		</tr>
		<c:forEach var="f" items="<%=uploadEx.list() %>">
		<tr>
			<td>${f }</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>