<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:useBean id="dao" class="model.Home"></jsp:useBean>
	<c:set var="board" value="${dao.selectAll() }"></c:set>
	<h1>썸네일 게시판</h1>
	
	<div>
		<ul>
			<li><a href="home.jsp">HOME</a></li>
			<li><a href="write.jsp">글작성</a></li>
		</ul>
	</div>
	<hr>