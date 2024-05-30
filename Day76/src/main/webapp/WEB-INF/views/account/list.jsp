<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<h3 class="debug"><marquee>디버그 페이지입니다 - 배포시 꼭 제거!</marquee></h3>
	
	<h4>Account LIST</h4>

	<table class="list">
		<tr>
			<th>IDX</th>
			<th>ID</th>
			<th>PASSWORD</th>
			<th>NICK</th>
			<th>EMAIL</th>
			<th>JOIN_DATE</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td>${row.userid }</td>
			<td>${fn:substring(row.userpw,0,6) }</td>
			<td>${row.nick }</td>
			<td>${row.email }</td>
			<td>${row.join_date }</td>
			<td><a href="${cpath }/account/update/${row.idx}">edit</a></td>
			<td><a href="${cpath }/account/delete/${row.idx}">del</a></td>
		</tr>
		</c:forEach>	
	</table>
</section>






<%@ include file="../footer.jsp" %>