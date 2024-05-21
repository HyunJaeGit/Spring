<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 
	1. Ex01Controller를 작성한다
	- get : 입력 form을 출력 (name, age를 전송)
	- post : age가 19 이상이면 성인, 아니면 미성년을 출력
 -->
<section> 

	<h4>ex02 - Map</h4>
	<hr>
	
	<fieldset>
		<legend>입력창</legend>
	 	<form method="post">
	 		<p><input name="name" placeholder="이름" required></p>
	 		<p><input name="age" placeholder="나이" type="number" required></p>
	 		
	 		<button>전송</button>
	 	</form>
	</fieldset>
</section>
</body>
</html>