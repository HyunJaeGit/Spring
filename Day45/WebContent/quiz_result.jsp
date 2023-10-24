<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz_result.jsp</title>
</head>
<body>
	<%! 
		String[] ids = new String[] {"test1", "itbank", "admin"};
		String[] pws = new String[] {"1234", "it", "qwe"};
		
		
		// 로그인 메서드
		protected String Login(String id, String pw) {
			String msg = "<h4>로그인 성공</h4>";
			String msg2 = "<h4>로그인 실패</h4>";
			
			for (int i=0; i<ids.length; i++) {
				if (ids[i].equals(id) && pws[i].equals(pw)) {
					return msg;
				}
			}
			return msg2;
		}
	%>
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");	
	%>
	
	<h1>로그인 결과</h1>
	
	<%=Login(id,pw) %>

	<button onclick="history.back()">뒤로</button>
	
	

</body>
</html>