<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section class="board">
	
	<c:forEach var="list" items="${board }">
		<article class="thumnail">
			<div><a href="view.jsp?idx=${list.idx }"><img src="${list.img_path }"></a></div>
			<p>
				게시물 번호 : ${list.idx }		<br>
				게시글 제목 : ${list.title }	<br>
			</p>
		</article>
	</c:forEach>
	
</section>


</body>
</html>