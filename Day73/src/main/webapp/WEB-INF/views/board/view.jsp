<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="board">
	<table>
		<tr>
			<td>${row.idx }. ${row.title }</td>
		</tr>
		<tr>
			<td>${row.writer } | ${row.view_count } | ${row.write_date }</td>
		</tr>
		<tr>
			<td><pre>${row.contents }</pre></td>
		</tr>
	</table>
	
	<hr>
	
	<fieldset class="rep-write">
		<form action="${cpath }/reply/write" method="post">
			<div>
			<input name="writer" placeholder="닉네임" required>
			<textarea name="contents" placeholder="댓글" required></textarea>
			<input name="board_idx" type="hidden" value="${row.idx }" required>
			</div>
			<div>
				<button>입력</button>
			</div>
		</form>
	</fieldset>
	
<hr>


<p>댓글 개수 : ${count }</p>
<p>${reCount }</p>

<!-- 댓글 불러오기 -->
	<c:forEach var="rep" items="${replyAll }">
<p>${rep.idx } | ${rep.writer }</p>

<p> ${rep.contents }</p>
<p> ${rep.write_date } <a class="del" href="${cpath }/reply/delete?idx=${rep.idx}">(x)</a></p>

<hr>		
	</c:forEach>
</section>

</body>
</html>