<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05_result.jsp</title>
</head>
<body>
	<h1>결과</h1>
	<hr>
	
	<%
		String site = request.getParameter("site");

		response.sendRedirect(site);
	%>

</body>
</html>