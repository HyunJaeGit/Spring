<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

	<%
		String email = request.getParameter("email");
		String userid = dao.selectUserid(email);
		String msg = "일치하는 계정이 존재하지 않습니다";
		int row = 0;
		
		
		if (user != null) {
			msg = "아이디 : " + userid;
			row = 1;
		}
	%>
	
	<script>
		message('<%=msg %>', <%=row %>);
	</script>

</body>
</html>