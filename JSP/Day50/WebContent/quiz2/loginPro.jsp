<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>
	
	<%	
	
		input = dao.selectOne(input);

		int row = 0;
		String msg = "로그인 실패";
		
		if (input != null) {
			row = 1;
			msg = input.getNick() + "님 로그인";
			
			session.setAttribute("user", input);
		}
	%>
	<script>
		message('<%=msg %>', <%=row %>);
	</script>
</body>
</html>