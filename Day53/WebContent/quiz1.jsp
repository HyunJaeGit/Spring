<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>
	<h1>Quiz1</h1>
	<hr>
	
	<%--
		이름, 나이를 입력할 form을 작성
		현재 페이지에 데이터를 전송하고
		나이에 따라서, 성인/미성년자를 판별해서 출력
		단, EL을 활용할 것
	 --%>
	 
	 <fieldset>
	 	<legend>정보 입력</legend>
	 	
	 	<form>
		 	<p><input name="name" placeholder="이름" required="required"></p>
		 	<p><input name="age" placeholder="나이" type="number" required="required"></p>
		 	
		 	<button>전송</button>
	 	</form>
	 </fieldset>
	 
	 <h4>결과</h4>
	 
	 <ul>
	 	<%-- ※ EL은 null을 출력하지 않음 --%>
	 	<li>이름 : ${param.name }</li>
	 	<li>나이 : ${param.age }세 - ${param.age >= 19 ? '성인' : '미성년자'}</li>
	 </ul>
	 
	 
</body>
</html>