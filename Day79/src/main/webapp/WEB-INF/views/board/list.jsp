<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="boardlist">
	<table>
		<tr>
			<th>게시물번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>업로드 날짜</th>
		</tr>
		<c:forEach var="row" items="${Blist }">
		<tr>
			<td>${row.idx }</td>
			<td><a href="${cpath }/board/view/${row.idx}">${row.title }</a></td>
			<td>${row.writer }</td>
			<td>${row.view_count}</td>
			<td>${row.write_date }</td>
		</tr>
		</c:forEach>
	</table>
	<a href="${cpath }/board/write"><button>게시글 작성</button></a>
</section>
<%@ include file="../footer.jsp" %>