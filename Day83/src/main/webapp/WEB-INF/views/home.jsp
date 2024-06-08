<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<style>
img {
	width: 150px;
	height: 150px;	
}
</style>

	<section class="home">
		<p>
			<a href="${cpath }/board/write">
				<button>글 작성</button>
			</a>
		</p>
		<article class="board">
			<c:forEach var="row" items="${list }">
			<div>
				<a href="${cpath }/board/view/${row.idx}">
					<img src="${cpath }/img/${row.idx }/${row.img}" width="200px">
				</a>
				<hr>
				${row.title } (${row.writer })
				<hr>
				👓 ${row.view_count } ${row.write_date }
			</div>
			</c:forEach>
		</article >
		<br>
		
	</section>
	
</body>
</html>