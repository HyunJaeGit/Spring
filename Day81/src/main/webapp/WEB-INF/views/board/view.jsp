<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<table border="1" cellspacing="0" cellpadding="10">
		<tr>
			<td>${row.idx }. ${row.title }</td>
		</tr>
		<tr>
			<td>
				${row.writer } | 
				${row.view_count } | 
				${row.write_date }
			</td>
		</tr>
		<tr>
			<td><pre>${row.contents }</pre></td>
		</tr>
	</table>
	
	<hr>
	
	<c:forEach var="rp" items="${rps }">
		<fieldset>
			<legend>${rp.writer } | ${rp.write_date }</legend>
		
			<p>${rp.contents }</p>
		</fieldset>
	</c:forEach>
	
</section>
</body>
</html>