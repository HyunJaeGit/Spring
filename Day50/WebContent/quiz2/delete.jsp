<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>

	<%
		int row = dao.delete(input.getIdx());
		String msg = "탈퇴 ";
		msg += row == 0 ? "실패" : "성공";
	%>

	<script>
		message('<%=msg %>', <%=row %>);
	</script>

</body>
</html>