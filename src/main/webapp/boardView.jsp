	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="Gbbs.GbbsDAO"%>
<%@ page import="Gbbs.GbbsDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale='1';">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>갤러리 게시판</title>
<style>
	body {
		background-color: black;
	}
	tr {
		background-color: black;
		color: white;
	}
</style>
</head>
<body>
	<%
		String UserId = null;
		if(session.getAttribute("UserId") != null) {
			UserId = (String) session.getAttribute("UserId");
		}
		
		int gbbsId = 0;
		if(request.getParameter("gbbsId") != null) {
			gbbsId = Integer.parseInt(request.getParameter("gbbsId"));
		}
		
		if(gbbsId == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("	alert('유효하지 않은 글입니다.')");
			script.println("	location.href='boardListForm.jsp'");
			script.println("</script>");
		}
		GbbsDTO dto = new GbbsDAO().getGbbs(gbbsId);
	%>
	<jsp:include page="./header.jsp"/>
	<div class="container">
		<div class="row">
			<table class="table" style="text-align: center; border: 1px solid white; color: white; background-color: black;">
				<thead>
					<tr>
						<th colspan="3" style="background-color: black; color: white; text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%">글 제목</td>
						<td colspan="2"><%= dto.getGbbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= dto.getId() %></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td colspan="2"><%= dto.getGbbsDate().substring(0, 11) + dto.getGbbsDate().substring(11, 13) + "시 " + dto.getGbbsDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%= dto.getGbbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
			</table>
			<a href="boardListForm.jsp" class="btn btn-primary">목록</a>
			<%
				if(UserId != null && UserId.equals(dto.getId())) {
			%>
				<a href="boardEditForm.jsp?gbbsId=<%= gbbsId %>" class="btn btn-primary">수정</a>
				<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="boardDeleteProcess.jsp?gbbsId=<%= gbbsId %>" class="btn btn-primary">삭제</a>			
			<%
				}
			%>
		</div>
	</div>
</body>
</html>