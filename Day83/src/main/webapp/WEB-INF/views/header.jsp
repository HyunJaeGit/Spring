<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		text-align: center;
	}
	img {
		width: 400px;
		height: 400px;
	}
	.header {
		display: flex;
		justify-content: center;
		background: linear-gradient(45deg, red, orange, yellow, green, blue, darkblue, purple);
	}
	.board > div {
		margin: 10px 5px;
		border: 1px solid #aaaaaa;
		padding: 10px;
	}
	section {
		width: 1000px;
		margin: 10px auto;
		box-sizing: border-box;
		background-color: #e1f5fe50;
		border: 3px solid #80cbc4;
		border-radius: 15px;
		box-shadow: 5px 5px 5px 5px #01579b;
		padding: 20px;
	}
	.board {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
	}
	article {
		border: 1px solid;
		padding: 10px;
	}
	.write table {
		width: 800px;
		margin: 0 auto;
		border-collapse: collapse;
	}
	.write tr {
		border-bottom: 1px solid;
	}
	.write td, th {
		padding: 5px 15px;
		text-align: left;
	}
	.write textarea {
		padding: 15px;
		width: 750px;
		height: 300px;
		overflow: scroll;
		font-size: 120%;
	}
	.write input {
		width: 600px;
		height: 25px;
		margin: 5px;
	}
	.home button {
		width: 900px;
		height: 30px;
	}
	.view {
		text-align: center;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
	.btns {
		display: flex;
	}
	
</style>
</head>
<body>
	<section class="header">
		<h1><a href="${cpath }">이미지 게시판</a></h1>
		<hr>
	</section>