<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section class="view">
	
	<table>
		<tr>
			<th>번호</th>
			<td>${row.idx }</td>
			<td id="img" rowspan="6">
				<img src="https://image.aladin.co.kr/product/32693/11/cover200/k462936565_1.jpg">
			</td>
		</tr>
		<tr>
			<th>도서명</th>
			<td>${row.title }</td>
		</tr>
		<tr>
			<th>저자</th>
			<td>${row.writer }</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td>${row.publisher }</td>
		</tr>
		<tr>
			<th>가격</th>
			<td>${row.price }</td>
		</tr>
		<tr>
			<th>출판일</th>
			<td>${row.p_date }</td>
		</tr>
	</table>



</section>
</body>
</html>