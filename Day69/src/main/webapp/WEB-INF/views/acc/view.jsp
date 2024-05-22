<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>

	<table class="view-table">
		<tr>
			<th>IDX</th>
			<td>${acc.idx }</td>
		</tr>
		<tr>
			<th>USERID</th>
			<td>${acc.userid }</td>
		</tr>
		<tr>
			<th>USERPW</th>
			<td>${fn:substring(acc.userpw, 0, 4) }
				- substring(acc.userpw, 0, 4)
			</td>
		</tr>
		<tr>
			<th>NICK</th>
			<td>${acc.nick }</td>
		</tr>
		<tr>
			<th>EMAIL</th>
			<td>${acc.email }</td>
		</tr>
		<tr>
			<th>JOIN_DATE</th>
			<td>${acc.join_date }</td>
		</tr>
	</table>

</section>
</body>
</html>