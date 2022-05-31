<%@ page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if (session.getAttribute("UserId") == null) {
	JSFunction.alertLocation("로그인 후 이용해주십시오.",
			"./LoginForm.jsp",out);
	return;//특정한 조건에서 실행을 멈추고 싶을 때는 반드시 return을 작성해야함
}
%>