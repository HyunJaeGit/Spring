<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<style>
.lotto {
	width: 400px; 
	height: 200px; 
	text-align: center; 
	display: flex; 
	flex-direction: row; 
	align-items: center;
}
</style>

	<h1>Quiz1</h1>
	<hr>
	
	<ol>
		<li>Quiz1Controller를 작성한다
		<ul>	
		<li>- get : 정수 하나를 입력 받을 form을 작성</li>
		<li>- post : 입력 받은 정수의 수만큼 로또 번호를 생성 해서 출력</li>
		</ul>
		</li>
		
		<li>Login 처리는 Quiz1Service에서 진행한다</li>
	</ol>
	
<fieldset class="lotto">
	<legend>로또 자동 생성기</legend>
	<form method="post">
		<input name="n" type="number" placeholder="로또 장수" required>
		
		<button>진행</button>
	</form>
</fieldset>
	
	
	
</body>
</html>