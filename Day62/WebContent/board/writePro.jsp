<%@page import="model.BoardDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
	
	<%
		String encoding = "utf-8";
		String location = pageContext.getServletContext().getRealPath("/board/img");
		int maxSize = 1024 * 1024 * 100;
		
		MultipartRequest mr = new MultipartRequest(request, location, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String title = mr.getParameter("title");
		String contents = mr.getParameter("contents");
		String writer = mr.getParameter("writer");
		
		String upload = mr.getFilesystemName("upload"); // 업로드된 파일 이름
		
		dao.insertImg(title, contents, writer, "img/" + upload);
	%>

<section>
	
	<h4>결과</h4>
	
	<h1>result</h1>
	
	<ul>
		<li><%=title %></li>
		<li><%=contents %></li>
		<li><%=writer %></li>
		<li><%=upload %></li>
	</ul>
	
	<button onclick="history.back()">뒤로</button>
	
</section>
</body>
</html>