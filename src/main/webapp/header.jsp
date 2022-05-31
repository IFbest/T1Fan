<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/fe80de38a9.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./resources/css/secondteam.css" >
<script src="./resources/js/header.js" defer></script>
<title>Insert title here</title>
</head>
	<body>
		<nav class="navbar">
			<div class="navbar-header">
				<i class="fas fa-wings"></i>
	        		<a href="index.jsp"><img src="./resources/images/tilogo.png" /></a>
			</div>
			
			<ul class="navbar-menu">				
				<li><a href="boardListForm.jsp">자유게시판</a></li>
				<li><a href="./list.do">게이밍기어</a></li>
				<li><a href="media.jsp">방송/영상</a></li>
				<li><a href="match.jsp">경기소식</a></li>
			</ul>
			
			<ul class="navbar-nav">
				<!-- active : 단 한개의 홈페이지에만 들어갈 수 있는 것으로 현재 선택된 현재의 홈페이지를 의미함 -->
				<% if(session.getAttribute("UserId") == null) { %>
					<li><div id="btn_group"><button type="button" id="test_btn1" onclick="location.href='./JoinForm.jsp'">회원가입</button>
					<button type="button" id="test_btn2" onclick="location.href='./LoginForm.jsp'">로그인</button>
					</div></li>
					<li></li>
				<% } else { %>
					<li><span>반갑습니다 <%= session.getAttribute("UserId") %>님!</span></li>
					<li><div id="btn_group"><button type="button" id="test_btn1" onclick="location.href='./LogoutProcess.jsp'">로그아웃</button>
					<button type="button" id="test_btn2" onclick="location.href='./memberEdit.jsp'">정보수정</button>
					</div></li>
				<% } %>
			</ul>
			
			<a href="#" class="navbar_toggleBtn">
	        		<i class="fas fa-bars"></i>
	      	</a>
			
		</nav>		
	</body>
</html>