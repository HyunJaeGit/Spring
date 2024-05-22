<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<fieldset>
		<legend>도서 정보 입력</legend>
	<form method="POST">
		<p><input name="title" placeholder="제목" value="${row.title }" required></p>
		<p><input name="writer" placeholder="저자" value="${row.writer }" required></p>
		<p><input name="publisher" placeholder="출판사" value="${row.publisher }" required></p>
		<p><input name="p_date" type="date" value="${row.p_date }" required></p>
		<p><input name="price" placeholder="가격" value="${row.price }" required></p>
		
		<button>작성</button>
	</form>
	</fieldset>
</section>

</body>
</html>