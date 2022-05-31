<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<link rel="stylesheet" href="./resources/css/logincss.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<%
	request.setCharacterEncoding("UTF-8");
	String backPage = request.getHeader("referer");

	String cookie = "";
	Cookie[] cookies = request.getCookies(); //쿠키생성
	if(cookies !=null&& cookies.length > 0)
		for (int i = 0; i < cookies.length; i++){
	if (cookies[i].getName().equals("UserId")) { // 내가 원하는 쿠키명 찾아서 값 저장
		cookie = cookies[i].getValue();}}
%>
<script type="text/javascript">
	function checkValue() {
		inputForm = eval("document.loginInfo");
		if(! inputForm.userId.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if(! inputForm.userPw.value) {
			alert("비밀번호를 입력하세요.");
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
	                    <h3 class="pt-3 font-weight-bold">로그인</h3>
	                </div>
	                <div class="panel-body p-3">
	                    <form action="LoginProcess.jsp" method="POST" name="loginInfo" onsubmit="return checkValue()">
	                        <div class="form-group py-2">
	                            <div class="input-field"> 
		                            <span class="far fa-user p-2"></span> 
		                            <input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요." value="<%=cookie%>" required> 
	                            </div>
	                        </div>
	                        <div class="form-group py-1 pb-2">
	                            <div class="input-field"> 
		                            <span class="fas fa-lock px-2"></span> 
		                            <input type="password" id="userPwd" name="userPwd" placeholder="비밀번호를 입력하세요." required> 
		                            <button class="btn bg-white text-muted"> 
		                            	<span class="far fa-eye-slash"></span> 
		                            </button> 
	                            </div>
	                        </div>
		                        <div class="form-inline"> 
		                        <input type="checkbox" name="remember" id="remember" <% if(cookie.length() > 1) out.println("checked"); %>> 
		                        <label for="remember" class="text-muted">정보 기억하기</label> 
		                        <a href="findId.jsp" id="forgot" name="forgot" style="color:skyblue;">아이디를 잊어버리셨나요?</a>
	                        </div>
	                        <input type="hidden" name="backPage" value=<%=backPage%>>
	                        <input type="submit" class="btn btn-primary btn-block mt-3" value="로그인">
	                        <div class="text-center pt-4 text-muted" style="color:black;">회원가입을 아직 안하셨나요? 
	                        	<a href="./JoinForm.jsp" style="color:skyblue;">회원가입</a> 
	                        </div>
	                        <%
	                        	String msg = request.getParameter("msg");
	                        	if(msg != null && msg.equals("0")) {
	                        %>
	                        	<script>
	                        		alert("비밀번호를 확인해주세요.");
	                        	</script>
	                        <% } else if(msg != null && msg.equals("-1")) { %>
	                        	<script>
	                        		alert("아이디를 확인해주세요.")
	                        	</script>
	                        <% } %>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<jsp:include page = "footer.jsp"/>
</body>
</html>