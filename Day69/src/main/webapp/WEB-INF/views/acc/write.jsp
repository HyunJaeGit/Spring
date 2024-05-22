<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<h4>계성 생성~</h4>
	
	<form method="post">
		<p><input name="userid" placeholder="아이디" value="${acc.userid }" required></p>
		<p><input name="userpw" placeholder="패스워드" type="password" required></p>
		<p><input name="nick" placeholder="닉네임" value="${acc.nick }" required></p>
		<p><input name="email" placeholder="이메일" value="${acc.email }" required></p>
		
		<button>작성</button>
	</form>
</section>
</body>
</html>