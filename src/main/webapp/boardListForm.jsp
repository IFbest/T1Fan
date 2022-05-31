<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="Gbbs.GbbsDAO" %>
<%@ page import="Gbbs.GbbsDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>갤러리</title>
<style>
	body {
	 	background-color: black;
	 	weight:90%;
	 	height:90%;
	}
	.container .col-lg-10 {
		margin-top: 50px;
	}
	.container .jumbotron {
		padding-top : 20px;
		background-color: black;
		border: 1px solid white;
		border-radius: 5%
	}
	table {
		width: 100%;
		align: center;
		border: 1;
	    border-spacing: 0;
	    border-collapse: collapse;
	    border-color: black;
	    border-bottom: 1px solid white;
	    color: white;
	}
	
	th, td {
		border-bottom: 2px solid white;
		padding: 10px;
	}

	tr {
		text-align: center;
	}
	
	.btn {
		display: block;
		margin-top: 8px;
	}
</style>
</head>
<body style="background-color:black">	
	<jsp:include page="./header.jsp"/>
	<%
		int pageNumber = 1; // 1페이지를 의미함
		if(request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<div class="container">
		<div class="row">
			<div style="weight:90%;height:90%">
			<table class="table" style="text-align: center; border: 1px, solid #dddddd;">
				<thead>
					<tr>
						<th style="background-color: black; color: white; text-align: center;">번호</th>
						<th style="background-color: black; color: white; text-align: center;">제목</th>
						<th style="background-color: black; color: white; text-align: center;">작성자</th>
						<th style="background-color: black; color: white; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody style="background-color:black; color:white;">
					<%
						GbbsDAO dao = new GbbsDAO();
						ArrayList<GbbsDTO> list = dao.getList(pageNumber);
						for(int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%= list.get(i).getGbbsId() %></td>
						<td><a href="boardView.jsp?gbbsId=<%= list.get(i).getGbbsId() %>"><%= list.get(i).getGbbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></a></td>
						<td><%= list.get(i).getId() %></td>
						<td><%= list.get(i).getGbbsDate().substring(0, 11) + list.get(i).getGbbsDate().substring(11, 13) + "시 " + list.get(i).getGbbsDate().substring(14, 16) + "분"%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				// 페이징 처리
				if(pageNumber != 1) {
			%>
				<a href="boardListForm.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arrow-left">이전</a>
 			<%
				} 
				if(dao.nextPage(pageNumber + 1)) { // 다음 페이지가 있는지 확인
			%>
				<a href="boardListForm.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arrow-left">다음</a>
			<%
				}
			%>
			<a href="boardWriteForm.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	</div>
	<jsp:include page = "footer.jsp"/>
</body>
</html>