<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	
	<table>
		<tr>
			<th>번호 추첨 결과</th>
		</tr>
		
	<c:forEach var="lotto" items="${lottos }">
		<tr>
			<td>${lotto }</td>
		</tr>
	</c:forEach>
	
	</table>


</body>
</html>