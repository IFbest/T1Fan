<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>

<%@ page import="product.ProductDTO" %>
<%@ page import="product.ProductDAO" %>

<%
	request.setCharacterEncoding("UTF-8");
	String filename = "";
	String realFolder = "C:/Users/YU/eclipse-workspace/KH_2nd_team_project/src/main/webapp/resources/images"; //웹 어플리케이션상의 절대 경로, 파일저장은 상대경로 지정 불가
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기 5Mb
	//MultipartRequest 클래스 객체 multi 추가
	MultipartRequest multi = 
	new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	
	String productId = multi.getParameter("productId");   //상품 아이디
	String pname = multi.getParameter("pname");   //상품명
	String unitPrice = multi.getParameter("unitPrice");   //상품 가격
	String description = multi.getParameter("description");   //상품 설명
	String manufacturer = multi.getParameter("manufacturer");   //제조사
	String category = multi.getParameter("category");   //분류, 목록표(리스트)
	String unitsInStock = multi.getParameter("unitsInStock");   //재고 수
	String condition = multi.getParameter("condition");   //신상품 or 중고품 or 재생품


	Integer price;

	if(unitPrice.isEmpty()) {
	  price = 0;
	}
	else {
	  price = Integer.valueOf(unitPrice);
	}

	Integer stock;
	
	if(unitsInStock.isEmpty()) {
	  stock = 0;
	}
	else {
	  stock = Integer.valueOf(unitsInStock);
	}
	//MultipartRequest객체타입의 getFilesystemName()메소드를 작성
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);

	ProductDAO dao = new ProductDAO();

	ProductDTO dto = new ProductDTO();
	dto.setProductId(productId);
	dto.setPname(pname);
	dto.setUnitPrice(price);
	dto.setDescription(description);
	dto.setManufacturer(manufacturer);
	dto.setCategory(category);
	dto.setUnitsInStock(stock);
	dto.setCondition(condition);
	dto.setFilename(fileName);

	dao.addProduct(dto);

	response.sendRedirect("./list.do");
%>