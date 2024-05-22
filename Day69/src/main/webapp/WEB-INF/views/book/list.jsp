<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<section>
	<div class="listTool">
	<form method="get">
	<input name="index" placeholder="검색" required="required">
	<button>검색</button>
	</form>
	<a href="${cpath }/book/add"><button>리스트 추가</button></a>
	
	</div>
	<table>
		<tr>
			<th>IDX</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>출판사</th>
			<th>가격</th>
			<th>출판일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td><a href="${cpath }/book/view?idx=${row.idx }">${row.title }</a></td>
			<td>${row.writer }</td>
			<td>${row.publisher }</td>
			<td>${row.price }</td>
			<td>${row.p_date }</td>
			<td><a href="${cpath }/book/update?idx=${row.idx }">CLICK</a></td>
			<td><a href="${cpath }/book/delete?idx=${row.idx }">CLICK</a></td>
		</tr>
	</c:forEach>
	</table>







</section>
</body>
</html>
