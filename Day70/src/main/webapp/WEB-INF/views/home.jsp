<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	
<section>
	<h4>${ver }</h4>

	<ol>
		<li>Mybatis는 DB 접근을 지원하는 영속성 프레임 워크</li>
		<li>영속성은 조회, 추가, 변경, 삭제등을 다루는 클래스 및 설정의 집합을 의미</li> 
	</ol>
	
	<table>
		<tr>
			<th>No</th>
			<th>제목</th>
			<th>저자</th>
			<th>출판사</th>
			<th>출판일</th>
			<th>가격(원)</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>	
			<th>${row.idx }</th>
			<td>${row.title }</td>
			<td>${row.writer }</td>
			<td>${row.publisher }</td>
			<td>${row.p_date }</td>
			<td>${row.price }</td>
			<td><a href="${cpath }/book/update?idx=${row.idx}">수정</a></td>
			<td><a href="${cpath }/book/delete?idx=${row.idx}">삭제</a></td>
		</tr>
		</c:forEach>
	</table>
	
	
	
	
	
</section>
</body>
</html>