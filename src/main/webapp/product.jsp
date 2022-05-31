<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="productDAO" class="product.ProductDAO" scope="session" />
<html><head>
<link rel="stylesheet" href="./resources/css/secondteam.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>상품 상세 정보</title>
<!-- 3-23 장바구니 스크립트 추가 -->
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else {
			document.addForm.rest();
		}
	}
</script>
</head>
   <body style="background-color:black">
      <jsp:include page="header.jsp"/>
        <div class ="container">
            <div class ="row">
               <div>
               <img style="width:300px;height:300px;" src="./resources/images/${dto.filename}" />
               </div>
               <div>
                  <h3 class="white"><c:out value='${dto.pname}'/></h3>
                  <p>${dto.description }
                  <p><b>상품 코드 : </b><span class = "badge badge-danger">${dto.productId}</span>
                  <p><b>제조사 : </b>${dto.manufacturer}
                  <p><b>분류 : </b>${dto.category}
                  <p><b>재고 수 : </b>${dto.unitsInStock}
                  <h4 class="white">${dto.unitPrice}원</h4>
                  <p><form name="addForm" action="./addCart.jsp?id=${dto.productId}" method="post">
                  <!-- 상품 주문을 클릭하면 자바스크립트 핸들러 함수 addToCart()호출 -->
                  <a href = "#" class = "btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
                  <!-- 장바구니 버튼 추가, 클릭시 /cart.jsp로 이동함 -->
                  <a href = "./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a><!-- 3-23 장바구니 버튼 추가 -->
                  <a href = "./list.do" class = "btn btn-secondary">상품 목록 &raquo;</a> 
   					</form>
               </div>
            </div>
            <hr>
         </div>
         <jsp:include page = "footer.jsp"/>
   </body>
</html>