<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<form method="POST">
		<p><input name="userid" placeholder="아이디" required></p>
		<p><input name="userpw" type="password" placeholder="패스워드" required></p>
		
		<button>Login</button>
	</form>
	<a href="${cpath }/account/find">[비밀번호찾기]</a>
</section>


<%@ include file="../footer.jsp" %>