<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_result.jsp</title>
</head>
<body>
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		String upload = request.getParameter("upload");
		String color = request.getParameter("color");
		String gender = request.getParameter("gender");

		String major = request.getParameter("major");
		String info = request.getParameter("info");
	
// 		String hobby = request.getParameter("hobby");
//				값이 여러개일땐 getParameterValues -> 배열로 받음
		String[] hobbys = request.getParameterValues("hobby");
		String hobby = Arrays.toString(hobbys);		// Arrays.toString() - 배열을 문자열로 가져온다
													// ex) "[게임, 영화, 음악]"

		Enumeration<String> en = request.getParameterNames();
		// - 파라미터의 이름을 모두 받아서 확인 가능
		// - 보통 디버깅용으로 사용
		
		ArrayList<String> names = new ArrayList<>();
		
		while (en.hasMoreElements()) {
			String name = en.nextElement();
			names.add(name);
		}
		
		Map<String, String[]> all = request.getParameterMap();
		Set<String> keys = all.keySet();
		
		ArrayList<String> map = new ArrayList<>();
		
		for (String key : keys) {
			String values = Arrays.toString(all.get(key));
			String result = key + " : " + values;
			map.add(result);
		}
		
		
		
		
	%>												
	
	<h1>form 결과</h1>
	<hr>
	
	<ul>
		<li><%= userid %></li>
		<li><%= userpw %></li>
		<li><%= email %></li>
		<li><%= birth %></li>
		<li><%= upload %></li>
		<li><%= color %></li>
		<li><%= gender %></li>
		<li><%= hobby %></li>
		<li><%= major %></li>
		<li><%= info %></li>
	</ul>
	
	
	<h4>getParameterNames()</h4>
	
	<ul>
		<% for (String name : names) { %>
		<li><%=name %></li>
		<% } %>
	</ul>
	
	
	<h4>getParameterNames()</h4>
	
	<ul>
		<% for (String data : map) { %>
		<li><%=data %></li>
		<% } %>
	</ul>
	
</body>
</html>