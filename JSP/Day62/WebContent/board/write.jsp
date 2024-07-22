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
	fieldset {
		margin: 50px;
		width: 1000px;
	}
</style>

	<fieldset>
		<form action="writePro.jsp" method="post" enctype="multipart/form-data">
			<p><label for="writer">작성자 : </label><input name="writer" placeholder="작성자" required></p>
			<p><label for="title">글제목 : </label><input name="title" type="text" placeholder="글 제목" required></p>
			<p><label for="contents">글내용 : </label><input name="contents" type="text" placeholder="글 내용" required></p>
			
			<p><input name="upload" type="file" accept="image/*" required></p>
			
			<button>글 작성</button>
		</form>
	</fieldset>



</body>
</html>