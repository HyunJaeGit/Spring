<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		String encoding = "utf-8";
		int maxSize = 1024 * 1024 * 1024;
		
		MultipartRequest mr = new MultipartRequest(request, location, maxSize, encoding);
		
		String name = mr.getParameter("name");
		File upload = mr.getFile("upload");

		String origin = upload.getName();
		int dot = origin.lastIndexOf('.');
		String ex = origin.substring(dot);
		name += ex;
		
		
		/*
		System.out.println("파일명 디버깅 >>");
		System.out.println("origin : " + origin);
		System.out.println("dot : " + dot);
		System.out.println("ex : " + ex);
		*/
		
		File rename = new File(upload.getParent(), name);
		
		upload.renameTo(rename);
	%>


	<h1>업로드 결과</h1>
	<hr>
	
	<ul>
		<li>파일명 : <%=name %> </li>
		<li>업로드 위치1 : <%=mr.getFile("upload") %> </li>
		<li>업로드 위치2 : <%=location %> </li>
	</ul>

	<button onclick="history.back()">뒤로</button>

</body>
</html>