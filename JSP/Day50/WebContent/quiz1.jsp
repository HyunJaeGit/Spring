<%@page import="java.util.ArrayList"%>
<%@page import="beans.PersonVO"%>
<%@page import="java.util.List"%>
<%@page import="model.PersonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
<style>
	table, th, td {
		border: 1px solid black;
		padding: 15px;
		border-collapse: collapse;
	}
	
</style>
</head>
<body>
	<h1>Quiz1</h1>
	<hr>
	
	<h4>PersonDAO를 작성하여 아래 테이블을 모두 출력</h4>
	
	<%! PersonDAO dao = new PersonDAO(); 
		List<PersonVO> list = dao.selectALL();
	%>
	<jsp:useBean id="user" class="beans.PersonVO"/>
	<jsp:setProperty property="*" name="user"/>
	
	<table>
		<tr>
			<th>이름</th>
			<th>신장</th>
			<th>생일</th>
		</tr>
		<% for (PersonVO row : list) { %>
		<tr>
			<td><%=row.getName() %></td>
			<td><%=row.getHeight() %></td>
			<td><%=row.getBirth() %></td>
		</tr>
		<% } %>
	</table>

</body>
</html>