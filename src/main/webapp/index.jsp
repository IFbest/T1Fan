<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<!-- 날짜와 관련된 라이브러리 import -->
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<head>
<meta charset="EUC-KR">
<!-- bootstrap 스타일 활용 -->
<link rel="stylesheet" href="./resources/css/secondteam.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>Welcome</title>
</head>
<body style="background-color:black">
	<jsp:include page="header.jsp"/>
	<div class = "container">
		<div class = "text-center">
			<div class="section">
		<input type="radio" name="slide" id="slide01" checked>
		<input type="radio" name="slide" id="slide02">
		<input type="radio" name="slide" id="slide03">

		<div class="slidewrap">
			<ul class="slidelist">
				<li>
					<a>
						<label for="slide03" class="left"></label>
						<img src="./resources/images/1.jpg">
						<label for="slide02" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide01" class="left"></label>
						<img src="./resources/images/2.jpg">
						<label for="slide03" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide02" class="left"></label>
						<img src="./resources/images/3.jpg">
						<label for="slide01" class="right"></label>
					</a>
				</li>
			</ul>
		</div>
	</div>
	
	<hr>
	
	<div id="wrap">
        <div class="d1">
		<iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/SC3SOQCO-eo" frameborder="0" ></iframe>
		</div>
        <div class="d1">
        <iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/XyG6j1RixbA" frameborder="0" ></iframe>
		</div>
        <div class="d1">
        <iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/Jx7iqee8GtA" frameborder="0" ></iframe>
		</div>
    </div><hr>
			
		</div>
	</div>
	
	<div id="wrap"><!-- productId를 상품테이블 아이디와 맞춰야 합니다 --><!-- display : flex;를사용해야 가로배치와 링크 사용 가능 -->
        <div class="d1" style="cursor: pointer;" onclick="location.href='./view.do?productId=P0001';">
        <img class="fit" src="./resources/images/cap.jpg" /><p>모자</p><hr>		
		</div>
        <div class="d1" style="cursor: pointer;" onclick="location.href='./view.do?productId=P0002';">
        <img class="fit" src="./resources/images/hoodie.png" /><p>후드티</p><hr>
		</div>
        <div class="d1" style="cursor: pointer;" onclick="location.href='./view.do?productId=P0003';">
        <img class="fit" src="./resources/images/membership.jpg" /><p>멤버십</p><hr>    
		</div>
    </div>
    
	<!-- 아랫부분에 지시자로 footer.jsp 내용 표현 -->
	<%@ include file = "footer.jsp"%>
</body>
</html>