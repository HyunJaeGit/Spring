<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD TABLE</title>
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
</head>
<body>

<section class="header">
	<h1>${cpath }/BOARD - 연습 예제</h1>
	<p>${ver } <br>
		관리자 NICK : [ 관리자, 유저1, 테스트 ]
	</p>
	<ul>
		<li><a href="${cpath }/">home</a></li>
		<li><a href="${cpath }/account/login">login</a></li>
		<li><a href="${cpath }/board/add">게시글 작성</a></li>
	</ul>

<hr>
</section>