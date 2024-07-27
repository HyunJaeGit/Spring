<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<% request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id="input" class="beans.AccountVO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<c:set var="row" value="${dao.insert(input) }"/>
	
	<script>
		let row = ${row };
	
		if (row != 0) {
			alert('가입 성공');
			location.href = 'home.jsp';
		}
		else {
			alert('가입 실패');
			history.back();
		}
	</script>
</body>
</html>