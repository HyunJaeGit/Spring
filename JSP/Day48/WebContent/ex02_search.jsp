<%@page import="beans.PersonVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<jsp:useBean id="dao" class="model.PersonDAO"/>
	
	<% 
		String name = request.getParameter("name");
		List<PersonVO> list = dao.selectName(name);
	%>
	
	<table>
		<tr>
			<th>이름</th>
			<th>신장</th>
			<th>생년월일</th>
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