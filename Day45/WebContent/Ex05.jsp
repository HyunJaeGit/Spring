<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05.jsp</title>
</head>
<body>
	<h1>Redirect</h1>
	<hr>
	
	<ul>
		<li>클라이언트에게 지정 페이지로 이동시키는 메세지</li>
		<li>이때, 요청(request)는 유지되지 않는다</li>
	</ul>

	<form action="ex05_result.jsp" method="post">
		<select name="site">
			<option>네이버</option>
			<option value="https://www.naver.com/">네이버</option>
			<option value="https://www.daum.net/">다음</option>
			<option value="https://mgr.kgitbank.com/">LMS</option>
			<option value="https://www.google.com/">구글</option>
		</select>
		
		<button>전송</button>
	</form>

</body>
</html>
