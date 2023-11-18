<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex11.jsp</title>
</head>
<body>

	<h1>JSTL - 반복</h1>
	<hr>
	
	<%-- var : 반복하는 값을 저장하는 attribute 이름. pageContext에 저장됨 --%>
	<%-- begin : 반복의 시작 값 --%>
	<%-- end : 반복의 끝 값 --%>
	<%-- step : 증감. 기본값 1, 음수를 지정하면 ERROR --%>
	
	<c:forEach var="i" begin="1" end="5">
		<p>${i } : Hello JSTL!!!</p>
	</c:forEach>
	
	<c:forEach var="i" begin="1" end="5">
		<p><%=pageContext.getAttribute("i") %> : Hello JSTL!!!</p>
	</c:forEach>
	
	<h4>원래 하던방식</h4>
	<% for (int i = 1; i <= 5; i++) { %>
		<p><%=i %> : wassap JSP!!!</p>
	<% } %>
	
	<h4>거꾸로!</h4>
	<c:forEach var="i" begin="1" end="5">
		<p>${6 - i } : Hello JSTL!!!</p>
	</c:forEach>
	
	
	<h4>연습</h4>
	
	<select>
		<c:forEach var="i" begin="1900" end="2023">
			<option>${3923 - i }</option>
		</c:forEach>
	</select>

</body>
</html>