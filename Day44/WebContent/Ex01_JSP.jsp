<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01.jsp</title>

<!-- 여기는 HTML 주석, 웹 브라우저에 소스보기로 노출됨 -->
<%-- 여기는 JSP 주석, 웹 브라우저에 소스보기에 노출되지 않음 --%>

<style>
	* {
		font-family: consolas;
	}
	
</style>

</head>
<body>
	<h1>실행 잘 되나</h1>
	<hr>
	
	<h4>잘되네</h4>

	<ul>
		<li>Java Server Page의 약자</li>
		<li>Java라는 프로그래밍 언어를 접목한 페이지</li>
		<li>프로그래밍 언어가 추가되며 웹 페이지에 다양한 어플리케이션을 구동시킬 수 있게됨</li>
	</ul>
	
	<h4>JSP 구문</h4>
	
	<ol>
		<li>지시자(directive) : &lt;%@ %> 페이지 전반에 걸친 설정이나 외부 파일을 불러올때 사용</li>
		<li>선언부(declaration) : &lt;%@! %> 필드나 메서드를 선언하는 부분</li>
		<li>표현식(expression) : &lt;%= %> 자바의 데이터를 HTML 영역에 출력</li>
		<li>실행부(scriptlet) : &lt;% %> 지역변수나 제어문을 사용하는 영역</li>
	</ol>
	
	
	<script>
		let li = document.querySelectorAll('ol > li');
		
		for (let i=0; i < li.length; i++) {
			li[i].style.color = 'red';
			
			li[i].onmouseover = () => {
				let lili = li[i];
				lili.style.cursor = 'pointer';
				lili.style.color = 'black';
			}
			
			li[i].onclick = () => {
				let lili = li[i];
				lili.style.color = 'gold';
			}
		}
	

	</script>
</body>
</html>