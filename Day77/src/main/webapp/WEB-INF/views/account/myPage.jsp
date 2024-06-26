<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form action="update/${user.idx }" method="post">
	<section>
		<table class="board half">
			<tr>
				<th>회원번호</th>
				<td>${user.idx }</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${user.userid }</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input name="userpw" type="password" required value="${user.userpw }"></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${user.nick }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input name="email" required value="${user.email }"></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${user.join_date }</td>
			</tr>
		</table>

		
		<c:if test="${not empty user }">
			<ul class="myPage_btn">
				<li>
					<button>수정</button>
				</li>
				<li>
					<a href="${cpath }/account/delete/${user.idx}"><button>회원 탈퇴</button></a>
				</li>
			</ul>
		</c:if>
		
	</section>
</form>
<%@ include file="../footer.jsp" %>