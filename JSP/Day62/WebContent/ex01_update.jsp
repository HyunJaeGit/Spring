<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_update.jsp</title>
<style>
	fieldset {
		width: 400px;
		height: 200px;
		margin: 100px;
		align-items: center;
		text-align: center;
		font-size: bold;
	}
</style>
</head>
<body>	

	<%
		String name = request.getParameter("name");
	%>
	
<fieldset>
	<legend>파일명 변경</legend>
	
	<form action="ex01_updatePro.jsp" method="get">
		<p><%=name %> <input name="name" type="hidden" value="${param.name }" placeholder="새 파일명 입력"></p>
		<p>-> <input name="newName" placeholder="새 파일명 입력"></p>
		<p><button>변경</button></p>
	</form>
	
</fieldset>

</body>
</html>