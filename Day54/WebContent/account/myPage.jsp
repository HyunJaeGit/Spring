<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<form action="update.jsp" method="POST">
		<table class="accounts">
			<tr>
				<th>계정 번호</th>
				<td>${user.idx }</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${user.userid }</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" required></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${user.nick }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input name="email" type="email" value="${user.email }" required></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td>${user.join_date }</td>
			</tr>
		</table>
		
		<br>
		
		<input name="idx" type="hidden" value="${user.idx }">
	
		<button>수정</button>
		<button type="button" onclick="isDel(${user.idx})">탈퇴</button>
	</form>

	<script>
		function isDel(idx) {
			let del = confirm('탈퇴 하시겠습니까?');
			
			if (del) {
				location.href = 'delete.jsp?idx=' + idx;
			}
		}
	</script>

</body>
</html>