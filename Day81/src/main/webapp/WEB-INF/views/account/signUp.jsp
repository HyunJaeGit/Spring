<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section>

<fieldset>
	<legend>회원가입</legend>
	
	<form method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><input name="userid" placeholder="아이디입력" required></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input name="userpw" placeholder="password" type="password" required></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input name="nick" placeholder="닉네임" required></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input name="email" placeholder="이메일" type="email" required></td>
		</tr>
	</table>
		<button>JOIN</button>
	</form>
	
</fieldset>
</section>
</body>
</html>