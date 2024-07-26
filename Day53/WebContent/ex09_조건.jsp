<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex09.jsp</title>
</head>
<body>
	<h1>JSTL - 조건</h1>
	<hr>
	
	<form>
		<input name="age" type="number" placeholder="나이" value="${param.age }" required>
		<button>전송</button>
	</form>
	
	<h4>결과</h4>
	
	<c:if test="${param.age >= 19 }">
		<p>${param.age }세 : 성인입니다</p>
	</c:if>
	
	<%-- 태그 밖의 영역은 제어가 불가능 하기 때문에 else는 없다 --%>
	<c:if test="${param.age < 19 }">
		<p>${param.age }세 : 미성년자 입니다</p>
	</c:if>
	
</body>
</html>