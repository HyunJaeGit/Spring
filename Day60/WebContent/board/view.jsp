<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${dao.selectOne(param.idx) }"/>
<c:set var="rps" value="${dao.selectReplyAll(param.idx) }"/>


<article class="board">
	<table class="boards">
		<tr>
			<th colspan="6">${row.idx }. ${row.title }</th>
		</tr>
		<tr>
			<th>작성자</th>
			<th>${row.writer }</th>
			<th>조회수</th>
			<th>${row.view_count }</th>
			<th>작성일</th>
			<th>${row.write_date }</th>
		</tr>
		<tr>
			<td colspan="6"><pre>${row.contents }</pre></td>
		</tr>
		
		
		<!-- 추천 기능 -->
	<c:set var="isCheck" value="${dao.selectRecommend(row.idx, user.nick) }"/>
		<tr>
			<td colspan="6">
				<div class="recommend">
					<button class="${isCheck == 1 ? 'good' : '' }">추천</button>
					<button class="${isCheck == 2 ? 'bad' : '' }">비추천</button>
				</div>
			</td>
		</tr>
	</table>
	
	
	
	
	
	<c:if test="${row.writer == user.nick }">
	<p>
		<a href="${cpath }/board/update.jsp?idx=${row.idx }"><button>수정</button></a>
		<button  onclick="isDel(${row.idx}, '${cpath }')">삭제</button>
	</p>
	</c:if>
	
	<hr>
	
	<h5>${row.cnt }개의 댓글</h5>
	
	<form action="reply/write.jsp" class="reply">
		<input name="board_idx" type="hidden" value="${row.idx }">
		<input name="writer" type="hidden" value="${user.nick }">
		
		<section>
			<textarea name="contents" placeholder="바른말을 사용합니다"></textarea>
			<button>작성</button>
		</section>
	</form>

	<c:forEach var="rp" items="${rps }">

<c:set var="same" value="${user.nick == rp.writer ? '(x)' : ''  }"/>	

<pre>
${rp.writer } <a href="reply/delete.jsp?idx=${rp.idx }">${same }</a>
${rp.contents }
${rp.write_date }
</pre><hr>
	</c:forEach>



	
</article>

</body>
</html>