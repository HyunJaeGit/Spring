<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<%--
		home.jsp			id/pw를 입력 받을 form을 작성
							입력한 정보는 login.jsp로 전송
							또, '로그인 정보 저장'이라는 체크박스를 생성
							만약 id/pw 쿠키가 있으면 form에 자동완성 시킨다
							
		login.jsp			Account 클래스로 계정을 3개정도 생성해둔다
							전달받은 정보와 일치하는 계정이 있으면 
							- 세션에 계정 정보 저장
							- 로그인 저장을 체크했으면 쿠키에 id/pw 저장
							- success.jsp로 리다이렉트
							
							일치하는 정보가 없으면
							- fail.jsp로 리다이렉트
							
		Account.java		id/pw/nick을 가지는 Java Beans
		
		logout.jsp			세션에서 계정 정보를 제거
		
		myPage.jsp			현재 로그인 중인 계정의 정보를 테이블 형태로 출력
	 --%>

	<h4>접속 : <%=user.getNick() %></h4>
	
	<form action="login.jsp" method="POST">
		<p>
			<label for="userid">ID</label>
			<input id="userid" name="userid" value="<%=userid %>" required>
		</p>
		<p>
			<label for="userpw">PW</label>
			<input id="userpw" name="userpw" type="password" value="<%=userpw %>" required>
		</p>
		<p style="justify-content: start">
			<input id="save" name="save" type="checkbox" <%=save %>>
			<label for="save">ID/PW 저장</label>
		</p>
		
		<p><button>login</button></p>
	</form>
</body>
</html>