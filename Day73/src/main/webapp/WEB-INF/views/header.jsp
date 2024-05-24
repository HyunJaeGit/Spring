<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${cpath }</title>
<link href="${cpath }/resources/css/style.css" rel="stylesheet">
</head>
<body>

<section>
	<h1>Hello Mybatis!</h1>
	
	<ul class="menu">
		<li><a href="${cpath }">home</a></li>
		<li><a href="${cpath }/board/write">write</a></li>
	</ul>
	
	<hr>
</section>

<!-- 댓글 갯수 (fn:length() 로 직접 세어서 표시) -->
<c:set var="count" value="${fn:length(replyAll) }"></c:set>