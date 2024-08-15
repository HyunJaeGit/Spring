<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<section class="board">
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
	<c:forEach var="list" items="${list }">
		<tr>
			<td>${list.idx }</td>
			<td><a href="${cpath }/board?idx=${list.idx }">${list.title }</a></td>
			<td>${list.writer }</td>
			<td>${list.view_count }</td>
			<td>${list.write_date }</td>
		</tr>
	</c:forEach>
	</table>
	
	<p><a href="${cpath }/write"><button>작성</button></a></p>
</section>

<%@ include file="footer.jsp" %>