<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
</head>
<body>

	<%--
		quiz2.jsp				id/pw를 입력 받을 form을 작성
								입력한 데이터는 quiz2.result.jsp로 전송
								단, POST로 전송
								
		quiz2_result.jsp		선언부에 Account 클래스로 계정을 3개 정도 생성
								전달받은 데이터와 일치하는 계쩡 정보가 있으면
								화면에 '닉네임'님 로그인을 출력
		
		Account.java			계정 정보를 저장할 Java Beans
								필드는 : userid, userpw, nick
	 --%>
	 
	 <h1>로그인 화면</h1>
	 <hr>
	 
	 <form action="quiz2_result.jsp" method="post">
	 
	 <p><input name="userid" type="text" placeholder="id" required></p>
	 <p><input name="userpw" type="password" placeholder="password" required></p>
	 
	 <button>전송</button>
	 </form>
	 
	 
	 
	 
	 
	 

</body>
</html>