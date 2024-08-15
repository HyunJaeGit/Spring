<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<form>
	<section class="write">
		<table class="w-table">
			<tr>
				<th>제목</th>
				<td><input name="title"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea name="contents" placeholder="글 내용을 작성하세요"></textarea></td>
			</tr>
		</table>
		
		<input name="writer" type="hidden" value="관리자1">
		
		<p><button>작성</button></p>
	</section>
</form>
<%@ include file="../footer.jsp" %>