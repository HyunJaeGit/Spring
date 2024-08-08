<%@page import="java.util.Enumeration"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_result.jsp</title>
</head>
<body>
	<%
		String encoding = "utf-8";
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		int maxSize = 1024 * 1024 * 1024;
		
		MultipartRequest mr = new MultipartRequest(request, location, maxSize, encoding);
		
		File name = mr.getFile("upload");
		
		// 1. getparent()로 상위 목록을 불러옴
		String parent = name.getParent();
		
		// 2. 파일 객체를 만들어서 name.getParent()를 변수에 저장한다
		File dir = new File(name.getParent());
		
		
	
	%>
	
	<h1>result</h1>
	
	<ul>
		<li>파일명(경로포함) : <%=name %></li>
		
		<% for (String f : dir.list()) { %>
		<li>이름 : <%=f %></li>
		<% } %>
		
		<li>경로(상위경로) : <%=dir %></li>
	</ul>
	
	
	

</body>
</html>