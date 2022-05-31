<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="Gbbs.GbbsDAO" %>
<%@ page import="Gbbs.GbbsDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>갤러리 게시물 수정하기</title>
<style>
	body {
	 	background-color: black;
	}

	table {
		text-align: center;
		border: 1px soild white;
		background-color: black;
		border-radius: 10px;
	}
	tbody {
		background-color: black;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<%
		String UserId = null;
		if(session.getAttribute("UserId") != null) {
			UserId = (String) session.getAttribute("UserId");
		}
		
		if(UserId == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("	alert('로그인을 하세요.')");
			script.println("	location.href='LoginForm.jsp'");
			script.println("</script>");
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
		if(! UserId.equals(dto.getId())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("	alert('권한이 없습니다.')");
			script.println("	location.href='boardListForm.jsp'");
			script.println("</script>");
		}
	%>	
	<div class="container">
		<div class="jumbotron" style="background-color: black;">
			<div class="row">
				<form method="post" action="boardEditProcess.jsp?gbbsId=<%= gbbsId %>">
					<table class="table" style="text-align: center; border: 1px solid white;">
						<thead>
							<tr>
								<th colspan="2" style="background-color: black; color: white; text-align: center;">게시판 글 수정</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control" placeholder="글 제목" name="gbbsTitle" value="<%= dto.getGbbsTitle() %>"></td>
							</tr>
							<tr>
								<td><textarea class="form-control" style="resize: none; height: 350px;" placeholder="글 내용" name="gbbsContent" maxlength="2048" ><%= dto.getGbbsContent() %></textarea></td>
							</tr>
						</tbody>
					</table>
					<input type="submit" class="btn btn-primary pull-right" value="수정하기">
				</form>
			</div>
		</div>
	</div>
</body>
</html>