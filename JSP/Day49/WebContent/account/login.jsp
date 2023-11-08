<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<%
		Cookie[] cs = request.getCookies();
		String userid, save;
		
		userid = save = "";
		
		if (cs != null) {
			for (Cookie ck : cs) {
				switch(ck.getName()) {
				case "userid":	userid = ck.getValue(); 	break;
				case "save":	save = ck.getValue();		break;
				}
			}
		}
	%>

	<article>
		<form action="loginPro.jsp" method="POST">
			<p><input name="userid" placeholder="ID" value="<%=userid %>" required></p>
			<p><input name="userpw" type="password" placeholder="PW" required></p>
			<p>
				<input id="save" name="save" type="checkbox" <%=save %>>
				<label for="save">ID 저장</label>
			</p>

			<button>login</button>
		</form>
	</article>

</body>
</html>