<%@ page import="members.MembersDAO"%>
<%@ page import="members.MembersDTO"%>
<%@ page import="utils.sha" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%> 
<%
request.setCharacterEncoding("utf-8");
String uid = session.getAttribute("UserId").toString();
String upass = session.getAttribute("UserPwd").toString();

MembersDAO dao = new MembersDAO();
MembersDTO dto = dao.getMembertoEdit(uid, upass);

dao.close();  // DB 연결 해제
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('memberPost').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("memberAddr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("memberAddr").value = jibunAddr;
            }
        }
    }).open();
}
function change(){
	
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
</head>
   <body style="background-color:black;">
   <jsp:include page="header.jsp"/>
<script>
    function validationForm(form){
        if(form.name.value==""){
            alert("이름은 필수 입력 항목입니다.");
            form.name.focus();
            return false;
        }
        if(form.id.value==""){
            alert("아이디는 필수 입력 항목입니다.");
            form.id.focus();
            return false;
        }
        if(form.pass.value==""){
            alert("암호는 필수 입력 항목입니다.");
            form.pass.focus();
            return false;
        }
        if(form.passcheck.value==""){
            alert("암호확인은 필수 입력 항목입니다.");
            form.passcheck.focus();
            return false;
        }
    }
</script>
	<h1 class="white">정보 수정</h1>
<div class="container">
		<div class="col-lg-2"></div>
		<div class="col-lg-8" style="margin-top: 50px;">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" onsubmit="return validationForm(this)" action="./memberEditProcess.jsp" name="userInfo" >
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<span>아이디</span>
						<input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20" value="<%= dto.getId() %>">
						<input type="button" value="중복확인" name="checkId" id="checkId" class="dup" onclick="winopen()"><br>
						<input type="hidden" name="check" id="check" value="N"/>
					</div>
					<div class="form-group">
						<span>비밀번호</span>
						<input type="password" class="form-control" placeholder="비밀번호" name="pass" maxlength="20" >
					</div>
					<div class="form-group">
						<span>비밀번호 확인</span>
						<input type="password" class="form-control" placeholder="비밀번호확인" name="passcheck" maxlength="20" >
					</div>
					<div class="form-group">
						<span>이름</span>
						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20" value="<%= dto.getName() %>">
					</div>
					<div class="form-group">
						<span>전화번호</span>
						<input type="text" class="form-control" placeholder="010-0000-0000" name="phonenum" maxlength="20" value="<%= dto.getPhonenum() %>" >
					</div>
					<div class="form-group">
						<span>우편번호</span>
						<div class="form-inline">
							<input type="text" class="form-control" style="width: 30%" name="memberPost" id="memberPost" placeholder="우편번호" onclick="findAddr()" value="<%= dto.getMemberPost() %>">
							<input type="button" class="btn btn-primary" value="우편번호 검색" onclick="findAddr()" >
						</div>
					</div>
					<div class="form-group">
						<span>주소</span>
						<input type="text" class="form-control" name="memberAddr" id="memberAddr" placeholder="지번 or 도로명주소" onclick="findAddr()" value="<%= dto.getMemberAddr() %>"><!-- address : 지번or도로명주소-->
	  					<input type="text" class="form-control" name="memberDetail" id="memberDetail" placeholder="상세주소" value="<%= dto.getMemberDetail() %>"><!-- detailed address : 상세 주소 -->
					</div>
					<div class="form-group">
						<span>이메일</span>
						<input type="email" class="form-control" placeholder="이메일" name="email" maxlength="20" value="<%= dto.getEmail() %>">
					</div>
					<input type="radio" name="type" value="noaml" checked>일반회원	&nbsp;
					<input type="submit" class="btn btn-info" value="회원가입">
					<input type="reset" class="btn btn-warning" value="취소" onclick="goLoginForm()">
				</form>
			</div>
		</div>
		<div class="col-lg-2"></div>
	</div>
<script type="text/javascript">
function winopen(){
	if(document.fr.id.value =="" || document.fr.id.value.length < 0){
		alert("아이디를 먼저 입력해주세요")
		document.fr.id.focus();
	}else{
		window.open("member.jsp?userid="+document.fr.id.value,"","width=500, height=300");
	}
}
</script>
<jsp:include page = "footer.jsp"/>
</body>
</html>