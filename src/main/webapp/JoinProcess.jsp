<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="members.MembersDTO" %>
<%@ page import="members.MembersDAO" %>
<%@ page import="utils.JSFunction" %>
<%@ page import="utils.sha" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리</title>
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
</head>
<body>
	<jsp:useBean id="membersDTO" class="members.MembersDTO"/>	
	<jsp:setProperty property="*" name="membersDTO"/>
	<%
	request.setCharacterEncoding("UTF-8");
	// 수정 내용 얻기
	String name = request.getParameter("name"); 
	String id = request.getParameter("id"); 
	String pass = request.getParameter("pass");
	String passcheck = request.getParameter("passcheck");
	String email = request.getParameter("email");
	String phonenum = request.getParameter("phonenum");
	String type = request.getParameter("type");
	String memberPost = request.getParameter("memberPost");
	String memberAddr = request.getParameter("memberAddr");
	String memberDetail = request.getParameter("memberDetail");
	String encPass = sha.encryptPassword(pass);
	String encPasscheck = sha.encryptPassword(passcheck);
	// DTO에 저장 
	MembersDTO dto = new MembersDTO(); 
	dto.setName(name); 
	dto.setId(id); 
	dto.setPass(encPass);
	dto.setPasscheck(encPasscheck);
	dto.setEmail(email);
	dto.setPhonenum(phonenum);
	dto.setType(type);
	dto.setMemberPost(memberPost);
	dto.setMemberAddr(memberAddr);
	dto.setMemberDetail(memberDetail);
	// DB에 반영
	MembersDAO dao = new MembersDAO(); 
	int joined = dao.insertDTO(dto); 
	dao.close();
	// 성공/실패 처리
	if (joined == 1) {
	    // 성공 시 상세 보기 페이지로 이동
		JSFunction.alertLocation("회원가입에 성공하셨습니다.", "LoginForm.jsp" , out);
	}
	else {
	    // 실패 시 이전 페이지로 이동
	    JSFunction.alertBack("회원가입에 실패하였습니다.", out); 
	}

		// 회원 정보 테이블에 저장
		/* dao.insertMembers(membersDTO);
		String uid = (String)session.getAttribute("UserId");
		String upass = (String)session.getAttribute("UserPwd");//비밀번호 피라미터값은 무엇인가..

		MembersDTO dto = dao.getMembertoEdit(uid, upass); */

	%>
	<div class="container">
		<div class="col-lg-2"></div>
		<div class="col-lg-8" style="margin-top: 50px;">
			<div class="jumbotron" style="padding-top: 20px;">
				<form>
					<h3 style="text-align: center;">회원가입 정보확인</h3>
					<div class="form-group">
						<span>아이디</span>
						<input type="text" class="form-control" value="<%= dto.getId()%>" name="userId" maxlength="20">
					</div>
					<div class="form-group">
						<span>비밀번호</span>
						<input type="password" class="form-control" value="<%= dto.getPass()%>" name="userPw" maxlength="20">
					</div>
					<div class="form-group">
						<span>비밀번호 확인</span>
						<input type="password" class="form-control" value="<%= dto.getPasscheck()%>" name="userPwc" maxlength="20">
					</div>
					<div class="form-group">
						<span>이름</span>
						<input type="text" class="form-control" value="<%= dto.getName() %>" name="userName" maxlength="20">
					</div>
					<div class="form-group">
						<span>전화번호</span>
						<input type="text" class="form-control" value="<%= dto.getPhonenum() %>" name="userPhone" maxlength="20">
					</div>
					<div class="form-group">
						<span>우편번호</span>
						<div class="form-inline">
							<input type="text" class="form-control" style="width: 30%" id="userPost" value="<%= dto.getMemberPost() %>" >
							<input type="button" class="btn btn-primary" value="우편번호 검색" onclick="findAddr()">
						</div>
					</div>
					<div class="form-group">
						<span>주소</span>
						<input type="text" class="form-control" id="userAddr" value="<%= dto.getMemberAddr() %>"><!-- address : 지번or도로명주소-->
	  					<input type="text" class="form-control" id="userDtaddr" value="<%= dto.getMemberDetail() %>"><!-- detailed address : 상세 주소 -->
					</div>
					<div class="form-group">
						<span>이메일</span>
						<input type="email" class="form-control" value="<%= dto.getEmail() %>" name="userEmail" maxlength="20">
					</div>
					<input type="button" class="btn btn-success" value="확인">
					<button type="button" class="btn btn-success" onclick="location.href='LoginForm.jsp'">로그인</button>
					<button type="button" class="btn btn-warning" onclick="location.href='ModifyForm.jsp'">수정하기</button>
					<input type="reset" class="btn btn-danger" value="취소">
				</form>
			</div>
		</div>
		<div class="col-lg-2"></div>
	</div>
</body>
</html>