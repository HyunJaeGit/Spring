<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<article>
		<form action="update.jsp" method="POSt">
			<table class="accounts">
				<tr>
					<th>IDX</th>
					<td><%=user.getIdx() %></td>
				</tr>
				<tr>
					<th>ID</th>
					<td><%=user.getUserid() %></td>
				</tr>
				<tr>
					<th>PW</th>
					<td><input name="userpw" type="password" required></td>
				</tr>
				<tr>
					<th>PW확인</th>
					<td><input name="userpw" type="password" required></td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td><%=user.getNick() %></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input name="email" type="email" value="<%=user.getEmail() %>" required></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><%=user.getJdate() %></td>
				</tr>
			</table>

			<input name="idx" type="hidden" value="<%=user.getIdx() %>">			
			<p class="msg"></p>
			
			<button>수정</button>
			<button type="button" onclick="delCheck(<%=user.getIdx() %>)">탈퇴</button>
		</form>
	</article>
	
	<script src="../js/pwCheck.js"></script>
	<script>
		var idx = <%=user.getIdx() %>;
		if (idx === 0) {
			alert("로그인이 필요합니다!!!")
			location.href= "login.jsp";
		}
	</script>
</body>
</html>