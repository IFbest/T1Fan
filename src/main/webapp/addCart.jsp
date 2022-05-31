<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="product.ProductDTO"%>
<%@ page import="product.ProductDAO"%>
<%
		//전송된 상품 id
		String id = request.getParameter("id");
		//상품 id 넘어오지 않았을때 강제로 products.jsp 이동시키고 종료
		if(id == null || id.trim().equals("")) {
			response.sendRedirect("./list.do");
			return;
		}
		
		//상품 데이터 접근 클레스의 인스턴스 생성
		ProductDAO dao = new ProductDAO();
		
		//해당 id값을 이용해서 상품상세정보 얻어오는 코드
		ProductDTO product = dao.selectView(id);
		//System.out.println(product);
		if(product == null) {	//해당 상품이 없을경우 
			response.sendRedirect("exceptionNoProductId.jsp"); 
		}
		
		//모든 상품을 가져옴
		ArrayList<ProductDTO> goodList = dao.getAllProducts();
		//System.out.println(goodList);
		ProductDTO goods = new ProductDTO();
		for(int i=0; i<goodList.size(); i++) {
			/* 상품리스트 중에서 사용자 주문을 한 그 상품의 id가 일치하는 코드를 얻어서 Product에 대입 */
		 	goods = goodList.get(i);//ArrayList클래스의 get메서드
		 	if(goods.getProductId().equals(id)) {
		 		break;
		 	}
		}
		
		//세션 속성의 이름이 cardList인 session정보(장바구니에 담겨져있는 물품 목록)를 가져와서 ArrayList에 대입
		ArrayList<ProductDTO> list = (ArrayList<ProductDTO>)session.getAttribute("cartlist");
		
		/* cardlist값이 null이라면(처음엔 당연히 null 담겨있는게 없으니까) 새로운 ArrayList를 만들고
			세션에 ArrayList만들고 세션에 cardlist이름으로 list라는 값을 대입*/
		if(list == null) {
			list = new ArrayList<>();
			session.setAttribute("cartlist", list);
		}
		
		/* 사용자가 주문한 상품이 장바구니에 이미 담긴 물품인지 검색해서 있다면 수량을 증가 */
		int cnt = 0;
		ProductDTO goodsQnt = new ProductDTO();
		for(int i=0; i<list.size(); i++) {
			goodsQnt = list.get(i);
			if(goodsQnt.getProductId().equals(id)) {
				cnt++;
				int orderQuantity = goodsQnt.getQuantity() + 1;
				goodsQnt.setQuantity(orderQuantity);
			}
		}
		
		/* 사용자가 주문한 상품이 장바구니에 없다면 수량을 1로 바꿔주고
			장바구니 역할을 하고있는 ArrayList에 추가함.*/
		if(cnt == 0){
			goods.setQuantity(1);
			list.add(goods);
		}
		response.sendRedirect("./cart.jsp?id=" + id);
	%>
