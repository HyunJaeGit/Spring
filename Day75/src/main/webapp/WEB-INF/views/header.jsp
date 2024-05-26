<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK</title>
<link rel="stylesheet" href="${cpath }/resources/css/style.css">
</head>
<body>

<section class="header">
	<h1>Test 실습</h1>
	<h4>${test }</h4>
	<hr>
	
	<ul>
		<li><a href="${cpath }">home</a></li>
		<li><a href="${cpath }/book/list">book</a></li>
	</ul>	
</section>