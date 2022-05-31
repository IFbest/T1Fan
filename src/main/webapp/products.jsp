<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="members.MembersDTO"%>
<%@ page import="members.MembersDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="./resources/css/secondteam.css">
   <link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
   <meta charset="UTF-8">
   <title>상품 목록</title>
</head>
<body style="background-color:black">
<jsp:include page="header.jsp"/>
   <form method="get" action="list.do">
		<table width="90%">
			<tr>
				<td align="center">
					<select name="searchField">
						<option value="pname">상품명</option>
						<option value="manufacturer">제조사</option>
					</select>
					<input type="text" class="search" name="searchWord" />
					<input type="submit" class="search2" value="검색하기" />
				</td>
			</tr>
		</table>
	</form>
   
   <table class="table1">
		<tr>
			<th width="10%"></th>
			<th width="10%"></th>
			<th width="15%"></th>
			<th width="10%"></th>
			<th width="15%"></th>
			<th width="8%"></th>
		</tr>
		<c:choose>
			<c:when test="${ empty boardLists }"> <!-- 게시물이 없을 때 -->
			<tr>
				<td colspan="6" align="center">
				검색된 상품이 없습니다.
				</td>
			</tr>
			</c:when>
			<c:otherwise> <!-- 게시물이 있을 때 -->
				<c:forEach items="${ boardLists }" var="row" varStatus="loop">
					<td> <!--  번호 -->
						${ map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}
					</td>
					<td> <!-- 제목(링크) -->
						<a href="./view.do?productId=${ row.productId }">${ row.pname }</a>
					</td>
					<td>${ row.description }</td> <!-- 제품 설명 -->
					<td>${ row.manufacturer }</td> <!-- 제조사 -->
					<td>${ row.unitPrice }</td> <!-- 제품 가격 -->
					<td><a href="./view.do?productId=${ row.productId }"><img class="pimage" src="./resources/images/${row.filename}" /></a></td>
					<thead>
 					 <tr><th></th><th></th><th></th><th></th><th></th><th></th></tr>
					</thead>
					<tbody>
 					 <tr><th></th><td></td><td></td><td></td><td></td><td></td></tr>
					</tbody>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	
	</body>
	<!--  하단 메뉴(바로가기, 글쓰기는 관리자만 가능) -->
	<table border="0" width="90%">
		<tr align="center">
			<td>
				${ map.pagingImg }
			</td>
	<%
	String id = (String)session.getAttribute("UserId");
	if (id != null){
		String type = (String)session.getAttribute("UserType");
		if (type.equals("admin")) {%> 
		<td width="100"><button type="button" onclick="location.href='./write.do';">글쓰기</button></td>	
	<%
		}
	%>
	<%
		}
	%>
		</tr>
	</table>