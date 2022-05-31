<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="members.MembersDTO"%>
<%@ page import="product.ProductDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<link rel="stylesheet" href="./resources/css/logincss.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<%
	request.setCharacterEncoding("UTF-8");
%>
<script>
	var result = "<c:out value='${dto.id}'/>"
	function init() {
		if (result=="") {
			alert("일치하는 아이디가 없습니다");
			return document.location.href = 'findId.jsp';
		}
	}
</script>
</head>
<body style="background-color:black" onload="init()">
	<jsp:include page="header.jsp"/>
	<div class="container">
	    <div class="row">
	        <div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3">
	            <div class="panel border bg-white">
	                <div class="panel-heading">
	                    <h3 class="pt-3 font-weight-bold">조회하신 아이디 입니다</h3>
	                </div>
	                <div class="panel-body p-3">
	                    <form action="#" method="POST" name="loginInfo" onsubmit="return checkValue()">
	                        <div class="form-group py-2">
	                            <div class="input-field"> 
		                            <div>${dto.id}</div>
	                            </div>
	                        </div>
		                        <div class="form-inline" style="background:black;">
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<jsp:include page = "footer.jsp"/>
</body>
</html>