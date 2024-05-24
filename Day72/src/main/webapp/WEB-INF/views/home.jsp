<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section class="home">
	<p class="btn">
		<a href="${cpath }/board/add"><button>글작성</button></a>
	</p>

	<table>
		<tr>
			<th>게시글 번호</th>
			<th>제목</th>
			<th>글 내용</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일자</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td><a href="${cpath }/board/view?idx=${row.idx}">${row.title }</a></td>
			<td>${row.contents }</td>
			<td>${row.writer }</td>
			<td>${row.view_count }</td>
			<td>${row.write_date }</td>
			<td><a href="${cpath }/board/update?idx=${row.idx}">edit</a></td>
			<td><a href="${cpath }/board/delete?idx=${row.idx}">del</a></td>
		</tr>
		</c:forEach>
	</table>


</section>
</body>
</html>