<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product.ProductDTO"%>
<%@ page import="product.ProductDAO"%>
<% 
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("cart.jsp");
		return;
	}
	//session.invalidate();//로그인과 카트 모두 세션을 이용하여 초기화가 되어 로그인이 풀려버림
	session.removeAttribute("cartlist");
	response.sendRedirect("cart.jsp");
%>