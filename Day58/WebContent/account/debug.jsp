<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<c:set var="map" value="${accDao.selectAll() }"></c:set>
	<c:set var="list" value="${map['list'] }"></c:set>

	<h4>실제 서비스할 페이지가 아닙니다~</h4>
	<p>Account 테이블을 전체 출력 해주세요 (단, AccountDAO를 사용)</p>

<section class="board">
	<table class="boards">
		<tr>
			<th>IDX</th>
			<th>USERID</th>
			<th>USERPW</th>
			<th>NICK</th>
			<th>JOIN_DATE</th>
			<th>EMAIL</th>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td>${row.userid }</td>
			<td>${fn:substring(row.userpw, 0, 6) }</td>
			<td>${row.nick }</td>
			<td>${row.join_date }</td>
			<td>${row.email }</td>
		</tr>
		</c:forEach>
	</table>
</section>

</body>
</html>