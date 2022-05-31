<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="product.ProductDTO"%>
<%@ page import="product.ProductDAO"%>
<%@ include file="./IsLoggedIn.jsp"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}
	
	ProductDAO dao = new ProductDAO();
	
	ProductDTO product = dao.selectView(id);
	if (product == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	ArrayList<ProductDTO> cartList = (ArrayList<ProductDTO>) session.getAttribute("cartlist");
	ProductDTO goodsQnt = new ProductDTO();
	for (int i = 0; i<cartList.size();i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
	cartList.remove(goodsQnt);
		}
	}
	response.sendRedirect("cart.jsp");
%>
