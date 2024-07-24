<%@page import="service.NewPassword"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

	<jsp:useBean id="input" class="beans.AccountDTO"/>
	<jsp:setProperty property="*" name="input"/>

	<%
		AccountDTO find = dao.findPw(input);
		String msg = "일치하는 정보가 존재하지 않습니다";
		int row = 0;
		
		if (find != null) {
			String pw = NewPassword.getPassword();
			find.setUserpw(pw);
			
			row = dao.update(find);
			msg = "새 PW : " + pw;
		}
	%>
	
	<ul style="text-align: start;">
		<li><%=find.getIdx() %></li>
		<li><%=find.getUserid()%></li>
		<li><%=find.getUserpw() %></li>
		<li><%=find.getNick() %></li>
		<li><%=find.getEmail() %></li>
		<li><%=find.getJdate() %></li>
	</ul>
	
	<script>
		message('<%=msg %>', <%=row %>);
	</script>

</body>
</html>