<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK - 알라딘 베스트셀러</title>
<style>
	body {
		margin: 0 auto;
		background-color: #dcdcdc;
		width: 1000px;
	}
	.home {
		text-decoration: none;
		color: black;
		padding: 10px;
		background-color: skyblue;
		border-radius: 15px;
		box-shadow: 2px 2px 5px steelblue;
	}
	section {
		width: 900px;
		text-align: center;
		background-color: white;
		box-sizing: border-box;
		border-radius: 15px;
		margin: 10px;
		padding: 10px;
		box-shadow: 2px 2px 15px black;
	}
	section:nth-child(1) > ol {
		text-align: left;
	}
	
	table {
		width: 90%;
		margin: 0 auto;
		border-collapse: collapse;
		box-sizing: border-box;
	}
	th, td {
		border-bottom: 1px solid;
		padding: 10px;
	}
	.listTool {
		display: flex;
		flex-direction: row;
		gap: 10px;
	}
	.listTool a, .listTool button {
		height: 32px;
		box-sizing: border-box;
	}
	.listTool input {
		height: 28px;
		width: 550px;
		margin-left: 100px;
	}
</style>

</head>
<body>
	<section>
	<h1>BOOK TABLE</h1>
	<p><a class="home" href="${cpath }/book/list">HOME - BOOK LIST</a></p>
	<ol>
		<li>/book/list : 모든 책 목록을 출력</li>
		<li>/book/view : 지정 책 정보를 출력</li>
		<li>/book/add : 책정보를 입력 받아서 테이블에 추가</li>
		<li>/book/update : 지정한 책 정보를 업데이트</li>
		<li>/book/delete : 지정한 책의 정보를 테이블에서 제거</li>
	</ol>
	
	</section>

