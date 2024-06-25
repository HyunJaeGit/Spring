<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
.view {
	border-collapse: collapse;
	width: 900px;
	margin: 0 auto;
}
.view th, .view td {
	border: 1px solid #aeaeae;
	padding: 5px 10px;
}
.view div {
	text-align: center;
}
.view tr:last-child td {
	border: 0;
	padding: 10px 0;
}
.view input, .view textarea {
	box-sizing: border-box;
	width: 100%;
	border: 0;
	outline: none;
	font-family: consolas;
	font-size: 120%;
}
.view textarea {
	min-height: 350px;
	resize: none;
}
</style>

<form action="writePro.jsp" method="post" enctype="multipart/form-data">
	<table class="view">
		<tr>
			<th>제목</th>
			<td><input name="title" required></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input name="writer" required></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="contents"></textarea></td>
		</tr>
		<tr>
			<th>첨부 이미지</th>
			<td><input name="upload" type="file"></td>
		</tr>
		<tr>
			<td colspan="2"><button>작성</button></td>
		</tr>
	</table>
</form>

</body>
</html>