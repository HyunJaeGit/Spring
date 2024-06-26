<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz3</title>
</head>
<body>
	<h1>Quiz3</h1>
	<hr>
	
	<%--
		Account 테이블을 활용해서 로그인을 구현
		1. get으로 요청시 입력 폼을 보여준다
		- 로그인 상태가 아니면 x를
		- 로그인 상태면 닉네임을 아무대나 출력
		- 데이터 전송은 현재 URL에 POST로 전송
		
		2. post로 요청시 DB의 정보와 일치하면 로그인 상태를 유지시킨 후 현재 페이지로 리다이렉트
		
		3. 추가) 해시도 구현해 보세요~
	 --%>

	<h4>로그인 : ${empty user ? 'x' : user.nick }</h4>
	
	<form method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>
		
		<button>로그인</button>
		<button type="button" onclick="logout()">로그아웃</button>
	</form>
	
	<script>
		function logout() {
			let url = 'quiz3';
			
			fetch(url, { method : 'delete'})
			.then(response => {console.log(response);
			})
			
			loction.reload();
		}
	
	</script>
	
	
</body>
</html>