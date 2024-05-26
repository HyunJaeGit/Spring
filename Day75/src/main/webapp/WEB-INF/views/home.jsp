<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section class="home">
	
<div class="lotto">
	<h4>로또 추첨</h4>
	<ol>
		<li>/로 요청시 처리할 Controller를 작성</li>
		<li>View는 home.jsp를 사용</li>
		<li>home.jsp에서는 로또번호 한 세트를 출력</li>
		<li>로또 번호를 처리하는 부분은 LottoService 클래스를 작성해서 처리</li>
	</ol>
	<table class="lotto-num">
		<tr>
			<th>추첨된 번호 >> </th>
			<c:forEach var="lottos" items="${lottos }">
			<td>${lottos }</td>
			</c:forEach>
		</tr>
	</table>
</div>

</section>
</body>
</html>