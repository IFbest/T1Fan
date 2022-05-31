<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function checkValue() {
		inputForm = eval("document.loginInfo");
		if(! inputForm.userId.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if(! inputForm.email.value) {
			alert("이메일을 입력하세요.");
			return false;
		}
		
	}
</script>
</head>
<body style="background-color:black">
	<jsp:include page="header.jsp"/>
	<span style="color: red; font-size: 1.2em;">
        <%=request.getAttribute("LoginErrMsg") == null?
        		"" : request.getAttribute("LoginErrMsg") %>
    </span>
	<div class="container">
	    <div class="row">
	        <div class="offset-md-2 col-lg-5 col-md-7 offset-lg-4 offset-md-3">
	            <div class="panel border bg-white">
	                <div class="panel-heading">
	                    <h3 class="pt-3 font-weight-bold">아이디 찾기</h3>
	                </div>
	                <div class="panel-body p-3">
	                    <form action="./find.do" method="POST" name="loginInfo" onsubmit="return checkValue()">
	                       	<div class="form-group py-1 pb-2">
	                            <div class="input-field"> 
		                            <span class="fas fa-lock px-2"></span> 
		                            <input type="email" id="email" name="email" placeholder="이메일을 입력하세요." required> 
		                            <button class="btn bg-white text-muted"> 
		                            	<span class="far fa-eye-slash"></span> 
		                            </button> 
	                            </div>
	                        </div>
		                        <div class="form-inline" style="background:black;">
	                        </div>
	                        <input type="submit" class="btn btn-primary btn-block mt-3" value="아이디 찾기">
	                        
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<jsp:include page = "footer.jsp"/>
</body>
</html>