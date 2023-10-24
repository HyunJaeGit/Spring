<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex04.jsp</title>
</head>
<body>
	<h1>지역 변수 vs 멤버 변수(= 필드)</h1>
	<hr>

	<%!int n1 = 10;%>
	<%
		int n2 = 10;
	%>

	<h4>F5를 눌러 새로고침을 해보세요</h4>

	<ul>
		<li>필드 : <%=n1++%></li>
		<li>지역 : <%=n2++%></li>
	</ul>

	<!-- 	
		필드는 서버 실행시 JSP 파일이 한번 컴파일 될 떄 생성된다
		그 후 서버가 종료되면 제거됨 
		
	 	지역 변수는 클라이언트가 요청시 jspServie()라는 함수가 호출될 때 안에서 생성되고
	 	응답이 된 후 jspServie()가 종료되고 그 때 제거됨 
 	-->


</body>
</html>