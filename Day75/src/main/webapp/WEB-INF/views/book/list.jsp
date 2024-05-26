<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<section class="book_list">


	<div class="buttons">
		<div>
			<a href="${cpath }/book/upload"><button>업로드</button></a>
		</div>
	
		<div>
		<form method="post">
			<select name="type">
				<option value="title">제목</option>
				<option value="writer">저자</option>
				<option value="publisher">출판사</option>
			</select>
			
			<input class="search" name="search" value="${param.search }">
			
			<button>전송</button>
		</form>
		</div>
	</div>
	
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>저자</th>
			<th>출판사</th>
			<th>가격</th>
			<th>출판일</th>
			<th>삭제</th>
			<th>수정</th>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td><a href="${cpath }/book/view/${row.idx}">${row.title }</a></td>
			<td>${row.writer }</td>
			<td>${row.publisher }</td>
			<td>${row.price }</td>
			<td>${row.p_date }</td>
			<td><a href="${cpath }/book/delete/${row.idx}">del</a></td>
			<td><a href="${cpath }/book/update/${row.idx}">수정</a></td>
		</tr>
		</c:forEach>
	</table>
	

	
	
</section>
</body>
</html>