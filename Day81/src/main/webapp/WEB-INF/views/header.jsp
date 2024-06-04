<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${cpath }/resources/css/style.css" rel="stylesheet">
</head>
<body>
	<h1>${cpath } - Transaction</h1>
	<h4>로그인 상태 : 
		<c:choose>
			<c:when test="${empty user }">
				x
			</c:when>
			<c:otherwise>
				${user }
			</c:otherwise>
		</c:choose>
		
	</h4>
	
	<ul>
		<li><a href="${cpath }">홈 화면</a></li>
		<li><a href="${cpath }/account/list">유저리스트</a></li>
		<li><a href="${cpath }/account/signUp">회원가입</a></li>
		
		<!-- 로그인 상태에 따라 로그인 or 로그아웃을 표시 -->
		<c:set var="nick" value="${user }"></c:set>
		<c:choose>
			<c:when test="${empty user }">
				<li><a href="${cpath }/account/login">로그인</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="${cpath }/account/myPage">마이페이지</a></li>
				<li><a href="${cpath }/account/signOut">로그아웃</a></li>
			</c:otherwise>
		</c:choose>
		
	</ul>
	
	
	
	<hr>