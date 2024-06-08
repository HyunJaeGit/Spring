<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<section class="view">

	<table>
		<tr>
			<td>${row.title }</td>
		</tr>
		<tr>
			<td>
				${row.idx }	|
				${row.writer } |
				${row.view_count } |
				${row.write_date }
			</td>
		</tr>
		<tr>
			<td>
				<p><img src="${cpath }/img/${row.idx }/${row.img}" width="800px"></p>
				<pre>${row.contents }</pre>
			</td>
		</tr>
	</table>
	
	<br>
	
	<div class="btns">
		<a href="${cpath }/board/delete/${row.idx }">
			<button>삭제</button>
		</a>
		<a href="${cpath }/board/update/${row.idx }">
			<button>수정</button>
		</a>
	</div>
</section>
</body>
</html>