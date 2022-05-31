<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ include file="./IsLoggedIn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>갤러리 게시물 작성</title>

</head>
<body>
	<jsp:include page="./header.jsp"/>
	<div class="container">
			<div class="row">
				<form method="post" action="boardWriteProcess.jsp" >
					<table class="table table-striped" style="text-align: center; border: 1px solid white; background-color: black;">
						<thead>
							<tr>
								<th colspan="2" style="background-color: black; color: white; text-align: center;">게시판 글쓰기 양식</th>
							</tr>
						</thead>
						<tbody>
							<tr style="background-color: black;">
								<td><input type="text" class="form-control" placeholder="글 제목" name="gbbsTitle"></td>
							</tr>
							<tr>
								<td><textarea class="form-control" style="resize: none; height: 350px;" placeholder="글 내용" name="gbbsContent" maxlength="2048" ></textarea></td>
							</tr>
						</tbody>
					</table>
					<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
				</form>
			</div>
	</div>
</body>
</html>