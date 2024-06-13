<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<section>
	<h4>Board 테이블 - REST</h4>
	<p class="buttons">
		<button>GET</button>
		<button>POST</button>
		<button>PUT</button>
		<button>PATCH</button>
		<button>DELETE</button>
	</p>
	
	<table class="board">
		<thead>
			<tr>
				<th>Idx</th>
				<th>Title</th>
				<th>Contents</th>
				<th data-idx="1000">Writer</th>	<!-- data-idx="1000" -> Attribute(속성) -->
				<th>View_count</th>
				<th>Write_date</th>
			</tr>
		</thead>
		<tbody>
			<!-- 여기에 생성됨 -->
		</tbody>
	</table>
		
	<ul class="page">
		<c:forEach var="i" begin="1" end="10">
		<li>${i }</li>		
		</c:forEach>
	</ul>
	
	<!-- 제목 클릭시 출력 -->
	<div class="view">
		<pre></pre>
	</div>
	
</section>

<script src="${cpath }/resources/js/quiz.js"></script>





</body>
</html>