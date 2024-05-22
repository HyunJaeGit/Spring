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
<link href="${cpath }/resources/css/style.css" rel="stylesheet">
</head>
<body>
	<h1>${cpath } - DAO</h1>
	<h4>${ver }</h4>
	<ul class="header-menu">
		<li><a href="${cpath }/">home</a></li>
		<li><a href="${cpath }/acc/write">write</a></li>
		<li><a href="${cpath }/book/list">booklist</a></li>
	</ul>
	<hr>
	
	