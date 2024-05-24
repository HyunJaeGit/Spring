<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="view">
	<table>
		<tr>
			<th>글번호</th>
			<td>${row.idx }</td>
			<th>조회수</th>
			<td>${row.view_count }</td>
			<th>작성일</th>
			<td>${row.write_date }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="3">${row.title }</td>
			<th>작성자</th>
			<td>${row.writer }</td>
		</tr>
		<tr id="contents">
			<td colspan="6">${row.contents }</td>
		</tr>
	</table>

</section>
</body>
</html>