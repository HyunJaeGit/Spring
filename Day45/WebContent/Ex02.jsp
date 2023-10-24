<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex02.jsp</title>

<style>
	fieldset {
		display: inline-block;
	}
</style>


</head>
<body>
	<h1>GET, POST</h1>
	<hr>
	
	<ol>
		<li>GET
			<ul>
				<li>파라미터를 URL 담아서 전송</li>
				<li>속도가 빠르다</li>
				<li>URL은 길이 제한이 있어 긴 파라미터 전송이 불가능</li>
				<li>또, URL에 파라미터가 노출되므로 민감한 정보 전달에 부적합</li>
			</ul>
		</li>
		<li>POST
			<ul>
				<li>파라미터를 HTTP Header에 담아서 전송</li>
				<li>GET보단 느리다</li>
				<li>길이 제한이 딱히 없다</li>
				<li>URL에 파라미터가 노출되지 않아서 민감한 정보가 있다면 사용</li>
			</ul>
		</li>
	</ol>
	
	
	<fieldset>
		<legend>GET</legend>
		
		<form action="ex02_result.jsp" method="GET">
			<p><input name="name" placeholder="이름" required></p>
			<p><input name="email" type="email" placeholder="이메일" required></p>
			
			<button>전송</button>
		</form>
	</fieldset>
	
	
	<fieldset>
		<legend>POST</legend>
		
		<form action="ex02_result.jsp" method="POST">
			<p><input name="name" placeholder="이름" required></p>
			<p><input name="email" type="email" placeholder="이메일" required></p>
			
			<button>전송</button>
		</form>
	</fieldset>

</body>
</html>