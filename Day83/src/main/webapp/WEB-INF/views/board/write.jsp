<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST" enctype="multipart/form-data">
	<section class="write">
		<table>
			<tr>
				<th><label for="title">제목</label></th>
				<td><input name="title" id="title" value="${row.title }" placeholder="제목" required></td>
			</tr>
			<tr>
				<th><label for="writer">작성자</label></th>
				<td><input name="writer" id="writer" value="${row.writer }" placeholder="작성자" required></td>
			</tr>
			<tr>
				<td colspan="2"><textarea name="contents" value="${row.contents }" placeholder="내용" required></textarea></td>
			</tr>
			<tr>
				<th>썸네일</th>
				<td><input name="upload" type="file"></td>
			</tr>
		</table>
		
		<br>
		
		<button>작성</button>
	</section>
</form>

</body>
</html>