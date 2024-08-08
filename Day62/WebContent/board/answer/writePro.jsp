<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<jsp:useBean id="upload" class="service.ImgUpload"></jsp:useBean>
	<c:set var="row" value="${upload.test(pageContext.request) }"></c:set> 
	
	<script>
		let row = ${row };
		
		if (row != 0) {
			alert('작성 완료');
			location.href = "../home.jsp";
		}
		else {
			alert('작성 실패');
			history.back();
		}
	</script>
	
</body>
</html>