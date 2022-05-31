<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="members.MembersDAO"%>
<%@ page import="members.MembersDTO"%>
<%
request.setCharacterEncoding("utf-8");
String uid = session.getAttribute("UserId").toString();
String upass = session.getAttribute("UserPwd").toString();//비밀번호 피라미터값은 무엇인가..

MembersDAO dao = new MembersDAO();
MembersDTO dto = dao.getMembertoEdit(uid, upass);

dao.close();  // DB 연결 해제
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/secondteam.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>배송 정보</title>
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
function validationForm(form){
    if(form.name.value==""){
        alert("이름은 필수 입력 항목입니다.");
        form.name.focus();
        return false;
    }
    if(form.zipCode.value==""){
        alert("배송주소는 필수 입력 항목입니다.");
        form.id.focus();
        return false;
    }
    if(form.addressName.value==""){
        alert("배송주소는 필수 입력 항목입니다.");
        form.pass.focus();
        return false;
    }
}

</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body style="background-color:black">
	<jsp:include page="header.jsp"/>
	<div class="container">
	<h1>주문 배송</h1>
		<form action="./processShippingInfo.jsp?cartId=<%=request.getParameter("cartId") %>"  method="post" onsubmit="return validationForm(this)">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>">
			<div class="wrapper">
				<label class="content">성명</label>
				<div class="col-sm3">
					<input class="search" name="name" type="text" value="<%= dto.getName() %>"/>
				</div>
			</div>
			<div class="wrapper">
				<label class="content">우편번호</label>
				<div class="col-sm-3">
					<input class="search" id="memberPost" name="memberPost" type="text" value="<%= dto.getMemberPost() %>" readonly onclick="findAddr()">
				</div>
			</div>
			<div class="wrapper">
				<label class="content">주소</label>
				<div class="col-sm-3">
					<input class="search" id="memberAddr" name="memberAddr" type="text" value="<%= dto.getMemberAddr() %>" readonly onclick="findAddr()">
				</div>
			</div>
			<div class="wrapper">
				<label class="content">상세주소</label>
				<div class="col-sm-3">
					<input class="search" type="text" name="memberDetail" value="<%= dto.getMemberDetail() %>">
				</div>
			</div>
			<div class="wrapper">
				<label class="content">카드번호(-제외)</label>
				<div class="col-sm-3">
					<input class="search" type="text" name="cardNum">
				</div>
			</div>
			<div class="wrapper">
				<label class="content">카드기한(1월2일 → 0102)</label>
				<div class="col-sm-3">
					<input class="search" type="text" name="cardDate">
				</div>
			</div>
			<div class="wrapper">
				<label class="content">cvc 뒤의 3자리</label>
				<div class="col-sm-3">
					<input class="search" type="text" name="cardCvc">
				</div>
			</div>
			<div class="wrapper">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input class="search2" type="submit" value="등록" />
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>