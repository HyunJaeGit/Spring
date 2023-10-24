<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex02.jsp</title>
</head>
<body>
	<h1>JSP 기초</h1>
	<hr>
	
	<%-- 여기는 HTML 영역 --%>
	<%!
		// 여기는 자바 영역
		// 어? 접근 제어자가 붙네? --> 필드다!
		private int n1 = 10;
		public int adder(int n1, int n2) {
			return n1 + n2;
		}
	%>
	
	<%-- Java 데이터를 화면에 출력시 <%= %> 표현식 사용. 메서드 호출 및 연산도 가능 --%>
	<ul>
		<li>n1 = <%=n1 %></li>
		<li>n1 + 5 = <%=n1 + 5 %></li>
		<li>adder(5, 3) = <%=adder(5, 3) %></li>
		<li>adder(n1, 5) = <%=adder(n1, 5) %></li>
	</ul>
	
	<%
		// 어? 접근 제어자를 붙이면 에러 --> 지역변수다!
		int n2 = 20;
		
		// 표준입출력(콘솔창에 띄우는 행동)
		System.out.println("n2 = " + n2); 
		System.out.println("나는 콘솔에 출력됩니다~");
		
		for (int i = 1; i <=5; i++) {
			out.println("<h1>n2 = " + n2 + "</h1>");
			// JspWriter out
			// - 웹 브라우저에 데이터를 출력하는 객체
			// - JSP 내에 이미 만들어져 있는 객체, 이를 JSP 내장 객체라고 함
		}

	%>
	
	
	
	
	
	
	
</body>
</html>