<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<h4>파일 목록</h4>

	<ul>
		<c:forEach var="file" items="${dir }">
		<li><a href="${cpath }/files/${file.name }" download>${file.name }</a></li>
		</c:forEach>
	</ul>

	<hr>
	<h4>파일 업로드</h4>
	
	<form method="post" enctype="multipart/form-data">
		<p><input name="upload" type="file" required></p>
		<button>전송</button>
	</form>




</section>
</body>
</html>