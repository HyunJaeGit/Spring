<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

	<c:set var="idx" value="${param.idx }"></c:set>
	<c:set var="row" value="${dao.deleteReply(idx) }"/>
	
	<script>
		let row = ${row };
		message(row, '${cpath}', '댓글 삭제');
	</script>
</body>
</html>