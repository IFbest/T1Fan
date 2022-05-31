<%@ page import="members.MembersDTO" %>
<%@ page import="members.MembersDAO" %>
<%@ page import="utils.sha" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    //로그인 폼으로부터 받은 아이디와 패스워드
    String userId = request.getParameter("userId");
    String userPwd = request.getParameter("userPwd");
    String encUserPwd = sha.encryptPassword(userPwd);
    String remember = request.getParameter("remember");// 체크박스의 체크여부 넘어온다.
    String backPage = request.getParameter("backPage");
    
    Cookie cookie = new Cookie("UserId", userId);// 일단 쿠키 생성
    if (remember != null) { // 체크박스 체크여부에 따라 쿠키 저장 확인
		// 체크박스 체크 되었을 때
		// 쿠키 저장
		response.addCookie(cookie);
	} else {
		// 체크박스 체크 해제되었을 때
		// 쿠키 유효시간 0으로 해서 브라우저에서 삭제하게 한다.
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}
    
    //web.xml에서 가져온 데이터베이스 연결 정보   ↓getInitParameter는 web.xml의 매핑에서 가져올 수 있는 값
    //<context-param> / <param-name> / <param-value>
    String oracleDriver = application.getInitParameter("OracleDriver");
    String oracleURL = application.getInitParameter("OracleURL");
    String oracleId = application.getInitParameter("OracleId");
    String oraclePwd = application.getInitParameter("OraclePwd");
    
    //회원 테이블 DAO를 통해 회원 정보 DTO획득
    MembersDAO dao = new MembersDAO();
    MembersDTO membersDTO = dao.getMemberDTO(userId, encUserPwd);
    dao.close();
    
    //로그인 성공 여부에 따른 처리
    if(membersDTO.getId() != null){
        //로그인 성공 / 값은 변화되어지고 변화하여 돌아올 수 있다
        session.setAttribute("UserId", membersDTO.getId());//로그인한 ID값
        session.setAttribute("UserPwd", membersDTO.getPass());
        session.setAttribute("UserName", membersDTO.getName());//로그인한 Name값(musthave)
        session.setAttribute("UserType", membersDTO.getType());//관리자전용 글쓰기를 위한 값
        response.sendRedirect(backPage);//로그인 성공후        
    }else{
        //로그인 실패
        request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
        request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
    }
%>
