<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${dao.selectOne(param.idx) }"/>
	
<article class="board">
	<form action="updatePro.jsp" method="POST">
		<table class="boards">
			<tr>
				<th>제목</th>
				<td><input name="title" value="${row.title }" required></td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="contents" required>${row.contents }</textarea>
				</td>
			</tr>
		</table>
		
		<br>
		
		<input name="idx" type="hidden" value="${row.idx }">
		<button>작성</button>
	</form>
</article>
</body>
</html>