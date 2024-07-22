<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_updatePro.jsp</title>
</head>
<body>

	<%
		String name = request.getParameter("name");
		String newName = request.getParameter("newName"); 
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		
		File file = new File(location, name);
		File newfile = new File(location, newName);
		
		
		if ( file.exists() ) {
			if (file.renameTo(newfile)) {
			response.sendRedirect("ex01.jsp");
			}
			else {
				System.out.println("파일 이름 변경 실패" + name);
			}
		} 
		else {
			System.out.println("파일을 찾을수 없음 " + name);
		}
	
	%>

</body>
</html>