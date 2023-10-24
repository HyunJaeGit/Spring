<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz.jsp</title>
</head>
<body>
	<%--
		quiz.jsp					id/pw를 입력받을 form을 작성
									입력한 데이터는 quiz_result.jsp로 전송
									단, POST로 전송
									
		quiz_result.jsp				선언부에 문자열로 id/pw를 3개정도 생성
									전달받은 데이터와 일치하는 정보가 있으면
									화면에 xx님 로그인을 출력
	 --%>
	 
	 <fieldset>
	 	<legend>로그인</legend>
	 	
	 	<form action="quiz_result.jsp" method="post">
	 		<p><input name="id" type="text" placeholder="아이디입력" required></p>
	 		<p><input name="pw" type="password" placeholder="패스워드입력" required></p>
	 	
	 	
	 		<button>로그인</button>
	 	</form>
	 
	 </fieldset>
	 
	 
</body>
</html>