<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${cpath }</title>
</head>
<body>
	<h1>Spring Test</h1>
	<hr>
	
	<h4>Junit 프레임 워크</h4>
	
	<ul>
		<li>자바 언어를 이용한 단위 테스트를 제공하는 프레임 워크</li>
		<li>소프트웨어의 각 로직을 테스트시 유용</li>
	</ul>
	
	<h4>테스트 프레임 워크 없이 테스트 시</h4>
	
	<ol>
		<li>MVC프로젝트에서 DAO가 제대로 수행되는지 테스트를 하고 싶다</li>
		<li>Controller -> Service -> DAO 순으로 실험을 하기 때문에</li>
		<li>Controller나 Service가 구현되어 있지 않고</li>
		<li>혹은 저 중에서 에러가 발생하면 DAO까지 실행이 되지 않는다</li>
	</ol>


</body>
</html>