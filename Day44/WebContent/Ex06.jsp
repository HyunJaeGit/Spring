<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex06.jsp</title>
</head>
<body>
	<h1>request</h1>
	<hr>
	
	<ul>
		<li>서버 : 서비스를 제공하는 자</li>
		<li>클라이언트 : 서비스를 이용하는 자</li>
		<li>서버/클라이언트는 서로 요청/응답으로 데이터를 주고 바등며 상호작용</li>
		<li>요청은 클라이언트가 서버로 통신을 보내는 것	</li>
		<li>응답은 서버가 올바른 요청에 대한 응답을 클라이언트로 보내는 것</li>
	</ul>
	
	<%
		// JSP는 요청을 처리하기 위해 request라는 객체가 이미 생성되어 있다
		// 마찬가지로, 내장 객체임
		// request - 지역변수라서 <%! 선언부에서는 쓸수없음
		
		String cpath = request.getContextPath();		// 프로젝트 최상위 경로
		String localAddr = request.getLocalAddr();		// 서버 IP
		String remoteAddr = request.getRemoteAddr();	// 클라이언트 IP
		int localPort = request.getLocalPort();			// 서버 Port
		int remotePort = request.getRemotePort();		// 클라이언트 Port
		String method = request.getMethod();			// 요청 메서드
		String protocol = request.getProtocol();		// 서버가 사용하는 프로토콜
		StringBuffer url = request.getRequestURL();		// URL
		String uri = request.getRequestURI();			// URI
		request.setCharacterEncoding("utf-8");
		String encoding = request.getCharacterEncoding();
		
// 		String pathInfo = request.getPathInfo();		
// 		String pathTran = request.getPathTranslated();
		
// 		String realPath = request.getRealPath("Ex06.jsp");
// 		- deprecated는 지원 중지된 함수 혹은 클래스로 사용하지 않는것을 권장
		
	%>	
	
	<ul>
		<!-- cpath는 보통 최상위 변수를 말함 -->
		<li><%=cpath %></li>
		<li><%=localAddr %></li>
		<li><%=remoteAddr %></li>
		<li><%=localPort %></li>
		<li><%=remotePort %></li>
		<li><%=method %></li>
		<li><%=protocol %></li>
		<li><%=uri %></li>
		<li><%=url %></li>
		<li><%=encoding %></li>
	</ul>
	
	
</body>
</html>

