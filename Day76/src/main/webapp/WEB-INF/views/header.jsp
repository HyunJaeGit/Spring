<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${cpath }</title>

<link rel="stylesheet" href="${cpath }/resources/css/style.css">
</head>
<body>

<header>
	<h1>${cpath } - Account</h1>
	
	<nav class="menu">
		<ul>
			<li><a href="${cpath }">home</a></li>
		</ul>
		<ul>
			<li style="color: red;"><a href="${cpath }/account/list">디버그</a></li>
			<li>
				
					<c:choose>
						<c:when test="${empty now_nick }">
							<a href="${cpath }/account/login">로그인</a>
						</c:when>
						<c:otherwise>
							<a href="${cpath }/account/logout">로그아웃</a>
						</c:otherwise>
					</c:choose>
				
			</li>
			<li><a href="${cpath }/account/signUp/${row.idx}">회원가입</a></li>
		</ul>
	</nav>
</header>

<hr>
	
<main>
	