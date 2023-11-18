<%@page import="model.AccountDAO"%>
<%@page import="beans.AccountDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
    
    
    
    <table class="AccTable">
    	<tr>
    		<th>IDX</th>
    		<th>USERID</th>
    		<th>USERPW</th>
    		<th>NICK</th>
    		<th>EMAIL</th>
    		<th>JDATE</th>
    	</tr>
    	<% List<AccountDTO> list = dao.selectALL();
    	for (AccountDTO row : list) { %>
    	<tr>
    		<td><%=row.getIdx() %></td>
    		<td><%=row.getUserid() %></td>
			<td><%=row.getUserpw() %></td>
			<td><%=row.getNick() %></td>
			<td><%=row.getEmail() %></td>
			<td><%=row.getJdate() %></td>
    	</tr>
    	<% } %>
    </table>
    
    
</body>
</html>