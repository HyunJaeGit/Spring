<%@page import="beans.AccountVO"%>
<%@page import="model.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		public void setCookies(HttpServletResponse response, AccountVO user, String save) {
			Cookie[] cs = new Cookie[] {
				new Cookie("userid", user.getUserid()),
				new Cookie("save", "checked")
			};
			
			for (int i = 0; i < cs.length; i++) {
				cs[i].setMaxAge(0);
				
				if (save != null) {
					cs[i].setMaxAge(60 * 60);
				}
				
				response.addCookie(cs[i]);
			}
		}
	%>

	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="user" class="beans.AccountVO"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		String save = request.getParameter("save");
	
		AccountDAO dao = new AccountDAO();
		user = dao.selectOne(user);
		
		// user가 null이 아니면 -> 로그인 성공
		if (user != null) {
			// 성공시 세션에 저장해서 로그인 상태를 유지 시킨다
			session.setAttribute("user", user);
			
			// 쿠키 생성 및 발급
			setCookies(response, user, save);
		}
		
		response.sendRedirect("home.jsp");
	%>
	
</body>
</html>