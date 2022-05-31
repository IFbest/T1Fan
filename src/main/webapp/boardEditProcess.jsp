<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Gbbs.GbbsDAO" %>
<%@ page import="Gbbs.GbbsDTO" %>
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 게사물 수정</title>
</head>
<body>
	<%
		// 재로그인 불가능하게 처리
		String UserId = null;
		if(session.getAttribute("UserId") != null) {
			UserId = (String) session.getAttribute("UserId");
		}
		// 로그인이 안된 상태로 게시글 작성 시도 시
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
		// 로그인 된 멤버 게시글 수정 시
		else {
			// 입력이 안된 사항이 있을 시
			if(request.getParameter("gbbsTitle") == null || request.getParameter("gbbsContent") == null
				|| request.getParameter("gbbsTitle").equals("") || request.getParameter("gbbsContent").equals(""))	 {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("	alert('입력이 안 된 사항이 있습니다.')");
				script.println("	history.back()");
				script.println("</script>");
			}
			// 글수정 처리
			else {
				GbbsDAO dao = new GbbsDAO();
				int result = dao.update(gbbsId, request.getParameter("gbbsTitle"), request.getParameter("gbbsContent"));
				// 데이터베이스 오류 시 글 수정 실패
				if(result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("	alert('글 수정에 실패했습니다.')");
					script.println("	history.back()");
					script.println("</script>");
				}
				// 글 수정 성공 시 게시판으로 이동
				else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("	location.href='boardListForm.jsp'");
					script.println("</script>");
				}
			}
		}
	%>
</body>
</html>