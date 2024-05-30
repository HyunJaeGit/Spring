<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="signUp">

<fieldset>
	<legend>회원가입</legend>
	
	<form method="post">
		<p><input name="userid" placeholder="아이디" value="${row.userid }" required></p>
		<p><input name="userpw" placeholder="암호" value="${row.userpw }" required></p>
		<p><input name="nick" placeholder="닉네임" value="${row.nick }" required></p>
		<p><input name="email" placeholder="이메일" value="${row.email }" required></p>
	
		<p><button>회원가입 완료</button></p>
	</form>
</fieldset>

</section>

<%@ include file="../footer.jsp" %>
