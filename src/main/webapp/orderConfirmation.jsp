<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="product.ProductDTO"%>
<%@ page import="product.ProductDAO"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%	
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>주문 정보</title>
</head>
<body style="background-color:black">
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="alter alter-danger">주문해주셔서 감사합니다.</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h2 style="color:white;">영수증</h2>
		</div>
		<div class="row justify-content-between">
			<div style="color:white;" class="col-4" align="left">
				<strong>배송 주소</strong> <br> 성명 : ${dto.name}<br>
					우편번호 : ${dto.memberPost}
					주소 : ${dto.memberAddr}(${dto.memberDetail})<br>
				</div>
				<div class="col-4" align="right">
					<p> <em>주문일: <%= sf.format(nowTime) %></em>
				</div>
		</div>
		<div class="">
			<table class="table table-hover">
			<tr>
				<th class="text-center">상품</th> <th class="text-center">#</th>
				<th class="text-center">가격</th> <th class="text-center">소계</th>
			</tr>
			<%
			int sum = 0;
					ArrayList<ProductDTO> cartList = (ArrayList<ProductDTO>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<ProductDTO>();
					for (int i = 0; i<cartList.size(); i++) {//상품리스트 하나씩 출력하기
						ProductDTO product = cartList.get(i);
						int total = product.getUnitPrice() * product.getQuantity();
						sum = sum + total;
			%>
			<tr>
				<td class="text-center"><em><%=product.getPname()%></em></td>
				<td class="text-center"><%=product.getQuantity()%></td>
				<td class="text-center"><%=product.getUnitPrice()%>원</td>
				<td class="text-center"><%=total%>원</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td></td>
				<td></td>
				<td class="text-right"><strong>총액: </strong></td>
				<td class="text-center text-danger"><strong><%=sum%></strong></td>
			</tr>
			</table>
				<a href="./shippingInfo.jsp?cartId=${dto.cartId}"class="btn btn-secondary" role="button">이전</a>
				<div class="container"> <p><a href="./list.do" class="btn btn-secondary"> &laquo; 계속 쇼핑하기</a></div>
		</div>
	</div>
</body>
</html>