<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITBANK</title>
<link rel="stylesheet" href="${cpath }/css/style.css">
</head>
<body>
	
	<h1>ITBANK</h1>
	<h4>cpath : ${cpath }</h4>
	<nav>
		<ul class="menu">
			<li><a href="${cpath }/home">home</a></li>
			<li><a href="${cpath }/login">login</a></li>
			<li><a href="${cpath }/signUp">signUp</a></li>
		</ul>
	</nav>

	<hr>
	<main>
	
	<jsp:useBean id="dao" class="model.BoardDAO"></jsp:useBean>
	<c:set var="map" value="${dao.selectAll() }"/>
	<c:set var="list" value="${map['list'] }"></c:set>
	