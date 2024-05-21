<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<style>
	body {
		margin: 0 auto;
		width: 50%;
		text-align: center;
		padding: 50px;
	}
	.ul, .ul > li {
		color: black;
		text-decoration: none;
	}
	table {
		margin: 0 auto;
		border-collapse: collapse;
		width: 400px;
		text-align: center;
	}
	tr, td {
		border-bottom: 1px solid;
		padding: 3 10px;
	}

</style>

	<h1>Model</h1>
	<hr>
	
	<h4>DB를 접근해서 데이터 처리를 하는 객체</h4>
	
	<h4>${ver }</h4>
	
	<table>
		<tr>
			<th>이름</th>
			<th>신장</th>
			<th>생년월일</th>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.name }</td>
			<td>${row.height }</td>
			<td>${row.birth }</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>