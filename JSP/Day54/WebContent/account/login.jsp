<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<form action="loginPro.jsp" method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>

		<button>login</button>
	
	<a href="find.jsp"><button type="button">ID/PW find</button></a>
	</form>

</body>
</html>