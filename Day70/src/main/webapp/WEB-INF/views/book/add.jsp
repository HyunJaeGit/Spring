<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>

	<fieldset>
	<legend>도서 정보 입력</legend>
	<form method="post">
		<ol>
			<li><input name="title" placeholder="제목" value="${row.title }" required></li>
			<li><input name="writer" placeholder="저자" value="${row.writer }" required></li>
			<li><input name="publisher" placeholder="출판사" value="${row.publisher }" required></li>
			<li><input name="p_date" type="date" value="${row.p_date }" required></li>
			<li><input name="price" placeholder="가격" value="${row.price }" required></li>
		</ol>
	<button>새 도서 추가</button>
	</form>
	</fieldset>
</section>
</body>
</html>