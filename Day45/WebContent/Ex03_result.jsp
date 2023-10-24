<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex04_result.jsp</title>
</head>
<body>
	<h1>결과</h1>
	<hr>
	
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="per" class="beans.Person"/>
	<%-- useBean : 지정 타입 클래스의 인스턴스를 생성하는 태그, 아래 Java코드와 동일 --%>
	<%-- Person per = new Person(); --%>

<%--	
	<jsp:setProperty property="name" name="per" param="name"/>
	 - property : 객체의 필드를 의미 
	 - param : 전달된 파라미터를 의미
	 - per.setName(name); 과 동일함
	  ※ property와 param의  이름이 동일하면 생략 가능
--%>
	
	<jsp:setProperty property="*" name="per"/>
	<jsp:setProperty property="name" name="per" param="name2"/>
	<%-- *는 이름이 동일한 공간에 1:1로 모두 대입해준다 --%>
	
	<ul>
		<li><%=per.getName() %></li>
		<li><%=per.getAge() %></li>
		<li><%=per.getHeight() %></li>
	</ul>
	
	
</body>
</html>