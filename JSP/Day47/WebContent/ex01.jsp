<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<%
		Cookie[] cs = request.getCookies();
		String name, save;
		
		name = save = "";
	
		// 최초 방문시엔 쿠키가 없을 수 있다
		if (cs != null) {
			for (int i = 0; i < cs.length; i++) {
				// System.out.println(cs[i].getValue());
				switch(cs[i].getName()) {
				case "name":	name = cs[i].getValue();	break;
				case "save":	save = cs[i].getValue();	break;
				}
			}
		}
	%>

	<h1>Cookie : 쿠키</h1>
	<hr>
	
	<ul>
		<li>서버에서 생성해서 클라이언트에 발급하는 데이터</li>
		<li>쿠키는 클라이언트 하드 디스크에 저장된다</li>
	</ul>
	
	<form action="ex01_result.jsp">
		<p><input name="name" placeholder="이름" required value="<%=name %>"></p>
		<p><input name="save" type="checkbox" value="yes" <%=save %>>저장</p>
		
		<button>전송</button>
	</form>

</body>
</html>