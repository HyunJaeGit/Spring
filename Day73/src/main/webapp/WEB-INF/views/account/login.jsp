<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="login">
	
	<fieldset>
	 <legend>로그인 화면</legend>
		<form method="post">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" placeholder="암호" type="password" required></p>
		
		<p><button>로그인</button></p>
		</form>
	</fieldset>


</section>
</body>
</html>