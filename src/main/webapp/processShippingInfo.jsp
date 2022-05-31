<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product.ProductDTO" %>
<%@ page import="product.ProductDAO" %>
<%@ page import="java.sql.Date" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String cartId = request.getParameter("cartId");
	String name = request.getParameter("name");
	String memberPost = request.getParameter("memberPost");
	String memberAddr = request.getParameter("memberAddr");
	String memberDetail = request.getParameter("memberDetail");
	String cardNum = request.getParameter("cardNum");
	String cardDate = request.getParameter("cardDate");
	String cardCvc = request.getParameter("cardCvc");


	ProductDAO dao = new ProductDAO();

	ProductDTO dto = new ProductDTO();
	dto.setCartId(cartId);
	dto.setName(name);
	dto.setMemberPost(memberPost);
	dto.setMemberAddr(memberAddr);
	dto.setMemberDetail(memberDetail);
	dto.setCardNum(cardNum);
	dto.setCardDate(cardDate);
	dto.setCardCvc(cardCvc);

	dao.productOrder(dto);

	response.sendRedirect("./order.do?cartId="+cartId);
%>