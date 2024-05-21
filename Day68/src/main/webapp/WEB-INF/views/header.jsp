<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day68 - Spring legacy project</title>
<style>
	.ul {
		list-style: none;
		display: flex;
		flex-direction: row;
		padding: 0;
	}
	.ul > li {
		margin: 10px;
	}
</style>
</head>
<body>

	<h1>Day68</h1>
	
	<P>The time on the server is ${serverTime}. </P>
	
	<ul class="ul">
		<li><a href="${cpath }/ex01">ex01</a></li>
		<li><a href="${cpath }/ex02">ex02</a></li>
		<li><a href="${cpath }/ex03">ex03</a></li>
		<li><a href="${cpath }/Quiz1">Quiz1</a></li>
		<li><a href="${cpath }/ex04">ex04</a></li>
	</ul>
	<hr>
