<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<script type="text/javascript" src="./js/validation.js">
function validationForm(form){
    if(form.productId.value==""){
        alert("필수 입력 항목입니다.");
        form.productId.focus();
        return false;
    }
    if(form.pname.value==""){
        alert("필수 입력 항목입니다.");
        form.pname.focus();
        return false;
    }
    if(form.unitPrice.value==""){
        alert("필수 입력 항목입니다.");
        form.unitPrice.focus();
        return false;
    }
    if(form.manufacturer.value==""){
        alert("필수 입력 항목입니다.");
        form.manufacturer.focus();
        return false;
    }
    if(form.category.value==""){
        alert("필수 입력 항목입니다.");
        form.category.focus();
        return false;
    }
    if(form.unitsInStock.value==""){
        alert("필수 입력 항목입니다.");
        form.unitsInStock.focus();
        return false;
    }
    if(form.unitsInStock.value==""){
        alert("필수 입력 항목입니다.");
        form.unitsInStock.focus();
        return false;
    }
}
</script>
</head>
<body style="background-color:black; color:white;">
	<jsp:include page = "header.jsp"/>
   	<div class = "jumbotron">
      <div class = "container">
         <h1 class = "display-3">상품 등록</h1>
      </div>
   </div>
   <div class = "container">
   <div class="text-right">
   </div>
   		<!-- ↓3-17 추가 -->
      <form name ="newProduct" action ="./processAddProduct.jsp"
         class ="form-horizontal" method = "post" enctype="multipart/form-data" onsubmit="return validationForm(this)">
         <div class = "form-group row">
            <label class = "col-sm-2">상품 번호</label>
               <div class = "col-sm-3">
                  <input type = "text" id ="productId" name ="productId" class = "form-control">
               </div>
         </div>
         <div class ="form-group row">
            <label class = "col-sm-2">상품 이름(대문자로 입력)</label>
            <div class = "col-sm-3">
               <input type = "text" id ="pname" name ="pname" class="form-control">
            </div>
         </div>
         <div class ="form-group row">
            <label class = "col-sm-2">상품 가격</label>
            <div class = "col-sm-3">
               <input type = "text" id ="unitPrice" name ="unitPrice" class="form-control">
            </div>
         </div>
         <div class ="form-group row">
            <label class ="col-sm-2">상품 설명</label>
            <div class ="col-sm-5">
               <textarea name="description" cols="50" rows="2"
               class = "form-control"></textarea>
            </div>
         </div>
         <div class = "form-group row">
            <label class = "col-sm-2">제조사(대문자로 입력)</label>
               <div class = "col-sm-3">
                  <input type = "text" name ="manufacturer" class = "form-control">
               </div>
         </div>
         <div class = "form-group row">
            <label class = "col-sm-2">카테고리</label>
               <div class = "col-sm-3">
                  <input type ="text" name="category" class = "form-control">
               </div>
         </div>
         <div class = "form-group row">
            <label class = "col-sm-2">재고 수</label>
               <div class = "col-sm-3">
                  <input type = "text" id ="unitsInStock" name  = "unitsInStock" class = "form-control">
               </div>
         </div>
         <div class = "form-group row">
            <label class="col-sm-2">제품 상태</label>
               <div class = "col-sm-5">
                  <input type = "radio" name ="condition" value = "New">
					새 상품
                  <input type = "radio" name ="condition" value = "Old">
					중고
                  <input type = "radio" name ="condition" value = "Refurbished">
					리퍼
               </div>
         </div>
         <div class ="form-group row">
			<label class ="col-sm-2">상품 사진</label>
				<div class ="col-sm-5">
 					<input type="file" name="productImage" class="form-control">
 				</div>
 			</div>
         <div class = "form-group row">
            <div class = "col-sm-offset-2 col-sm-10">
               <input type = "submit" class = "btn btn-primary" value ="상품등록" onclick="CheckAddProduct()">
            </div>
         </div>
      </form>
   </div>
</body>
</html>
