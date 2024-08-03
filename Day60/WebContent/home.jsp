<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%-- 게시글 관련 attribute --%>
<c:set var="page" value="${empty param.page ? 1 : param.page }"/>
<c:set var="type" value="${empty param.type ? 'title' : param.type }"/>
<c:set var="search" value="${empty param.search ? '' : param.search }"/>
<c:set var="order" value="${empty param.order ? 'idx' : param.order }"/>
<c:set var="map" value="${dao.selectAll(page, type, search, order) }"/>
<c:set var="list" value="${map['list'] }"/>
<c:set var="p" value="${map['p'] }"/>
<c:set var="count" value="${dao.countBoard() }"></c:set>


<%-- 계정 관련 attribute --%>
<c:set var="login" value="${empty user ? 'login' : 'logout' }"/>
<c:set var="signUp" value="${empty user ? 'signUp' : 'myPage/myPage' }"/>
<c:set var="nick" value="${empty user ? 'signUp' : user.nick }"/>

<section class="board">
	
	<!-- 게시판 메뉴 -->
	<article class="menu">
		<ul class="order">
			<li><a href="${cpath }?order=idx">최신순</a></li>
			<li><a href="${cpath }?order=view_count">조회순</a></li>
			<li><a href="${cpath }?order=cnt">댓글순</a></li>
		</ul>
		
		<ul class="order noBorder">
			<li><a href="${cpath }/account/${signUp }.jsp">${nick }-마이페이지</a></li>
			<li><a href="${cpath }/account/${login }.jsp">${login }</a></li>
		</ul>
	</article>

	<!-- 게시판 보드 -->
	<table class="boards">
		<tr>
			<th>No</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td><a href="${cpath }/board/view.jsp?idx=${row.idx }">
				${row.title } (${row.cnt })
			</a></td>
			<td>${row.writer }</td>
			<td>${row.view_count }</td>
			<td>${row.write_date }</td>
		</tr>
		</c:forEach>
	</table>
	
	
	<!-- 페이지 표시기능 -->
	<ul class="page">
		<c:set var="isSearch" value="type=${type }&search=${search }&order=${order }"/>

		<c:if test="${p.prev }">
			<li><a href="${cpath }?page=${p.begin - 1 }&${isSearch }">이전</a></li>
		</c:if>
	
		<c:forEach var="i" begin="${p.begin }" end="${p.end }">
			<li><a href="${cpath }?page=${i }&${isSearch }">${i }</a></li>
		</c:forEach>
		
		<c:if test="${p.next }">
			<li><a href="${cpath }?page=${p.end + 1 }&${isSearch }">다음</a></li>
		</c:if>
	</ul>
	
	<!-- 글작성버튼 및 게시글 개수 -->
	<p>
		<a href="${cpath }/board/write.jsp"><button>글작성</button></a>
		<span>총 <fmt:formatNumber value="${p.totalPage }" pattern="#,###" /> 개의 게시글</span>
		<span>총 <fmt:formatNumber value="${p.totalBoard }" pattern="#,###" /> 개의 게시글</span>
		<!-- 
			이미 페이징하면서 totalpage와 totalBoard를 구했으니 그대로 사용하면 됨
			굳이 countBoard()를 만들어서 구할 필요가 없음.
		  -->
		<c:out value="${count }">개</c:out>
		<fmt:formatNumber value="${count }" />개
	</p>
	
	
	<!-- 검색 기능 -->
	<div>
		<form>
			<select name="type">
				<option value="title">제목</option>
				<option value="writer">작성자</option>
				<option value="contents">내용</option>
			</select>		
			
			<input name="search">
			
			<button>검색</button>	
		</form>
	</div>
</section>

</body>
</html>