<%@ page import="members.MembersDAO"%>
<%@ page import="members.MembersDTO"%>
<%@ page import="utils.sha" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");//method="post" 이용시에 한글깨짐 방지
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
	int affected = dao.updateEdit(dto); 
	dao.close();
	// 성공/실패 처리
	if (affected == 1) {
	    // 성공 시 로그인
	    response.sendRedirect("LoginForm.jsp"); 
	}
	else {
	    // 실패 시 이전 페이지로 이동
	    JSFunction.alertBack("수정하기에 실패하였습니다.", out); 
	}
%>