<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


	<jsp:useBean id="input" class="beans.AccountVO"></jsp:useBean>
	<jsp:setProperty property="*" name="input"/>
	
<%-- 	${input.userid }, ${input.userpw } --%>
<%-- 	${pageContext.request.method } --%>
	
<%-- 	<%= request.getContextPath() %> --%>
	<c:set var="user" value="${empty user ? 0 : 1 }"></c:set>
	<c:set var="row" value="${accDao.selectOne(input) }"></c:set>
	
	<script>
		let row = ${row };
		message(row, '${cpath }', '로그인');
	</script>

</body>
</html>