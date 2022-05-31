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
    </div>
    <hr>
    <div id="wrap">
        <div class="d1">
		<iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/DgewwvgvgnM" frameborder="0" ></iframe>
		</div>
        <div class="d1">
        <iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/KkSWrvgDBtE" frameborder="0" ></iframe>
		</div>
        <div class="d1">
        <iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/ZKs5vcT4jds" frameborder="0" ></iframe>
		</div>
    </div>
    <hr>
    <div id="wrap">
        <div class="d1">
		<iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/He4rcVnd6yA" frameborder="0" ></iframe>
		</div>
        <div class="d1">
        <iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/2xgiMYb5QWo" frameborder="0" ></iframe>
		</div>
        <div class="d1">
        <iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/QE00D9xwDO0A" frameborder="0" ></iframe>
		</div>
    </div>
    <hr>
	
    
	<!-- 아랫부분에 지시자로 footer.jsp 내용 표현 -->
	<%@ include file = "footer.jsp"%>
</body>
</html>