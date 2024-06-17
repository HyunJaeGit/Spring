<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITBANK</title>
<style>
	a {
		color: inherit;
		text-decoration: none;
	}
	a:hover {
		text-decoration: underline;
	}
	.menu {
		list-style: none;
		padding: 0;
		display: flex;
	}
	.menu > li {
		margin: 0 10px;
	}
	.accounts {
		border-collapse: collapse;
	}
	.accounts th, .accounts td {
		border: 1px solid black;
		padding: 5px 10px;
	}
	button {
		margin: 10px;
	}
</style>
</head>
<body>

	<jsp:useBean id="dao" class="model.AccountDAO"/>

	<h1>Account</h1>
		
	<h5>
		${empty user ? '접속 : x' : user.nick }
		${empty user ? '' : '님 로그인' }
	</h5>
	
	<c:set var="isLogin" value="${empty user ? 'login' : 'logout' }"/>
	<c:set var="myPage" value="${empty user ? '' : 'myPage' }"/>	
	<ul class="menu">
		<li><a href="home.jsp">home</a></li>
		<li><a href="${isLogin }.jsp">${isLogin }</a></li>
		<li><a href="signUp.jsp">signUp</a></li>
		<li><a href="myPage.jsp">${myPage }</a></li>
	</ul>
		
	<hr>