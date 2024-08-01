<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	
	<fieldset>
		<legend>로그인</legend>
		
		<form action="loginPro.jsp" method="post">
			<p><input name="userid" placeholder="아이디" required></p>
			<p><input name="userpw" type="password" placeholder="암호" required></p>
			
			<button>접속</button>
		</form>
	</fieldset>			
		
</section>

</body>
</html>