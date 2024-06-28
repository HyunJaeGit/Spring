<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<fieldset style="width: 50%; margin: 0 auto;">
	<h2>로그인</h2>
	
	<form method="post">
		<p>아이디ID <input name="userid" placeholder="아이디" required></p>
		<p>패스워드 <input name="userpw" type="password" placeholder="패스워드" required></p>
		<p><input type="checkbox">아이디 저장</p>
	</form>
	</fieldset>
</section>


</body>
</html>