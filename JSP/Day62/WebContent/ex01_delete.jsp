<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_delete</title>
</head>
<body>

	<%
		String name = request.getParameter("name");
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		File file = new File(location, name);
		
		System.out.println(file);
		
		if (file.exists()) {
			file.delete();
			response.sendRedirect("ex01.jsp");
		} 
		else {
			System.out.println("파일을 찾을수 없음 " + name);
		}
		
		
	%>

</body>
</html>