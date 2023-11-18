<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="beans.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<%
		Person hong = new Person("홍길동");
		Person kim = new Person("김민지");
		
		List<Person> list = new ArrayList<>();
		list.add(hong);
		list.add(kim);
		
		Map<String, Object> map = new HashMap<>();
		map.put("h", hong);
		map.put("k", kim);
		
		pageContext.setAttribute("p1", hong);
		request.setAttribute("p2", kim);
		session.setAttribute("list", list);
		application.setAttribute("map", map);
		
		Person h = new Person("홍진호");
		application.setAttribute("p1", h);
	%>


	<h1>EL - Attribute</h1>
	<hr>
	
	<fieldset>
		<legend>표현식</legend>
		
		<p><%=((Person)pageContext.getAttribute("p1")).getName() %></p>
		<p><%=((Person)request.getAttribute("p2")).getName() %></p>
		<p><%=((List<Person>)session.getAttribute("list")).get(0).getName() %></p>
		<p><%=((Person)((Map<String, Object>)application.getAttribute("map")).get("h")).getName() %></p>
	</fieldset>
	
	
	<fieldset>
		<legend>EL</legend>
		
		<%-- EL은 메서드 호출도 되고, getter면 그냥 필드명을 바로 작성해도 된다 --%>
		<p>${p1.getName() } - ${p1.name }</p>
		<p>${p2.name }</p>
		
		<%-- 리스트나 맵에도 []를 제공한다 --%>
		<p>${list.get(0).name } - ${list[1].name }</p>
		<p>${map.get('h').name } - ${map['k'].name }</p>
		
		<%-- 이름이 겹치면 영역명을 작성해서 가져올 수 있지만, 구문이 길어져 권장하지 않음 --%>
		<%-- 영역명 : pageScope, requestScope, sessionScope, applicationScope --%>
		<p>${p1.name }</p>					<%-- 이름이 겹쳐서 첫번째 '홍길동'을 가져온다 --%>
		<p>${applicationScope.p1.name }</p> <%-- 영역명으로 '홍진호'를 가져옴(권장x, 이름을 안겹치게하는게 중요) --%>
	</fieldset>

</body>
</html>