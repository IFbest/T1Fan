<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="product.ProductDTO"%>
<%@ page import="product.ProductDAO"%>
<%@ include file="./IsLoggedIn.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/secondteam.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<%
String cartId = session.getId();
%>
<title>장바구니</title>
</head>
<body style="background-color:black">
	<jsp:include page="header.jsp"/>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left">
						<a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right">
						<a href="javascript:checkcart();" class="btn btn-danger">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
		<!-- table-hover : 마우스 포인터가 있는 행의 배경을 바꾸어 눈에 띄도록 만들어진 클래스 -->
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
				//세션 속성의 이름이 cardList인 세션 정보(장바구니에 담긴 물품 목록)를 가져와서 ArrayList에 대입
				int sum = 0;
							ArrayList<ProductDTO> cartList = (ArrayList<ProductDTO>) session.getAttribute("cartlist");
							if (cartList == null)
								cartList = new ArrayList<ProductDTO>();
							
							for (int i =0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
								ProductDTO product = cartList.get(i);
								int total = product.getUnitPrice() * product.getQuantity();
								sum = sum + total;
				%>
				<tr>
					<td><%=product.getProductId()%> - <%=product.getPname()%></td>
					<td><%=product.getUnitPrice()%></td>
					<td><%=product.getQuantity()%></td>
					<td><%=total%></td>
					<td>
						<a href="./removeCart.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">
							삭제
						</a>
					</td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="./list.do" class="btn btn=secondary"> &laquo; 쇼핑 계속하기</a>
			</div>
			<hr>
	</div>
	<jsp:include page="footer.jsp" />
	<script>
	function checkcart(){
		if (<%=cartList.size() %> == 0) {
			alert("장바구니에 1개 이상의 상품을 담아주세요.")
		} else {
			location.href ="./shippingInfo.jsp?cartId=<%= cartId %>"
		}
	}
	</script>	
</body>
</html>