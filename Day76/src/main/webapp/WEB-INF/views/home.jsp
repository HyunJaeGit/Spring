<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<h3>Hello Spring!!!</h3>
	
	<ul>
		<li>${user.userid }</li>
		<li>${user.nick }</li>
		<li>${user.email }</li>
	</ul>
</section>

<%@ include file="footer.jsp" %>


