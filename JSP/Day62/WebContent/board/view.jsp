<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<style>
	table {
		width: 1000px;
		border-collapse: collapse;
	}
	td,th {
		border: 1px solid;
		padding: 10px;
		text-align: center;
	}
	img {
		max-width: 600px;
		max-height: 600px;
	}
</style>

	<c:set var="idx" value="${param.idx }"></c:set>
	<c:set var="select" value="${dao.selectOne(idx) }"></c:set>

	<table>
		<tr>
			<th>게시글 번호</th>
			<td>${select.idx }</td>
			<th>게시글 제목</th>
			<td>${select.title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${select.writer }</td>
			<th>게시일자</th>
			<td>${select.write_date }</td>
		</tr>
		<tr>
			<td colspan="4"><img src="${select.img_path }"></td>
		</tr>
		<tr>
			<td style="text-align: left;" colspan="4">${select.contents }</td>
		</tr>
	</table>

</body>
</html>