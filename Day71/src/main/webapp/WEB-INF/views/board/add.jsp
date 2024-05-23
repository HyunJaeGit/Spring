<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="add">
	<fieldset>
	<legend>게시글 작성</legend>
	<form method="post">
		<p><input name="title" placeholder="제목" value="${row.title }" required></p>
		<p><input name="writer" placeholder="작성자" value="${row.writer }" required></p>
		<p><input name="contents" placeholder="글내용" value="${row.contents }" required ></p>
		
		<p><button>작성완료</button></p>
	</form>
	
	</fieldset>

</section>

</body>
</html>