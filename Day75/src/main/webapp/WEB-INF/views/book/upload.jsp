<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="upload">
	
	<fieldset>
		<legend>도서 등록</legend>
		
		<form method="post">
		<p><input name="title" value="${row.title }" placeholder="도서명" required></p>
		<p><input name="writer" value="${row.writer }" placeholder="저자" required></p>
		<p><input name="publisher" value="${row.publisher }" placeholder="출판사" required></p>
		<p><input name="price" value="${row.price }" placeholder="가격" required></p>
		<p><input name="p_date" value="${row.p_date }" type="date" placeholder="출판일" required></p>
		
		<p><button>업로드</button></p>
		</form>
		
	</fieldset>


</section>
</body>
</html>