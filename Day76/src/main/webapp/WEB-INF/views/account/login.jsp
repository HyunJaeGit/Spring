<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="signUp">

<fieldset>
	<legend>로그인 화면</legend>
	
	<form method="post">
		<p><input name="userid" placeholder="아이디" required></p>
		<p><input name="userpw" placeholder="암호" required></p>
			
		<p><button>login</button></p>
	</form>
</fieldset>

</section>

<%@ include file="../footer.jsp" %>