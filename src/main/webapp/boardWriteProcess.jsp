<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Gbbs.GbbsDAO" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="Gbbs.GbbsDTO" scope="page"/>
<jsp:setProperty name="dto" property="gbbsTitle"/>
<jsp:setProperty name="dto" property="gbbsContent"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		// 재로그인 불가능하게 처리
		String id = null;
		if(session.getAttribute("UserId") != null) {
			id = (String) session.getAttribute("UserId");
		}
		// 로그인이 안된 상태로 게시글 작성 시도 시
		if(id == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("	alert('로그인을 하세요.')");
			script.println("	location.href='LoginForm.jsp'");
			script.println("</script>");
		}
		// 로그인 된 멤버 게시글 작성 시
		else {
			// 입력이 안된 사항이 있을 시
			if(dto.getGbbsTitle() == null || dto.getGbbsContent() == null)	 {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("	alert('입력이 안 된 사항이 있습니다.')");
				script.println("	history.back()");
				script.println("</script>");
			}
			// 글쓰기 처리
			else {
				GbbsDAO dao = new GbbsDAO();
				int result = dao.write(dto.getGbbsTitle(), id, dto.getGbbsContent());
				// 데이터베이스 오류 시 글쓰기 실패
				if(result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("	alert('글쓰기에 실패했습니다.')");
					script.println("	history.back()");
					script.println("</script>");
				}
				// 글쓰기 성공 시 게시판으로 이동
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