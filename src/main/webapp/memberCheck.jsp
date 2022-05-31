<%@page import="members.MembersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>아이디중복체크</h2>
<%// 한글처리 & 받아온 파라미터 변수화
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("userId");

// MemberDAO객체생성 -> 전달받은 정보 모두 저장
MembersDAO dao = new MembersDAO();

// joinIdCheck(ID)메서드
int result = dao.joinIdCheck(id);
if (result == 1){
	out.print("사용가능한 아이디입니다");
	//5. 아이디사용하기버튼추가 => 동기방식사용 but 요즘은 비동기방식을 더 많이사용한다
	%>
	 <input type="button" value="아이디 사용하기" onclick="result()">
	<%
	
}else if(result == 0){
	out.print("중복된 아이디입니다");
}else{
	out.print("에러 발생!!!"); 
}

%>
<!-- 팝업창구현  -->
<fieldset>
	<!-- <form action="" method="post">
	action속성에 값이 없으면 기본적으로 자기자신을 불러오지만 중복확인 버튼을 클릭했을때 변경되지않는다.-->	
	<form action="./joinForm.jsp" method="post" name="wfr">
		ID : <input type="text" name="userid" value="<%=id%>">
		<input type="button" value="닫기" onclick="window.close()">
	</form>
</fieldset>

<!-- 선택된아이디는 중복확인창에서 회원가입 페이지로 정보전달  -->
 <script type="text/javascript">
    function result(){
    	opener.document.userInfo.id.value = document.wfr.userid.value;
    	
    	opener.document.getElementById('check').value = 'Y';
    	opener.document.getElementById('checkId').disabled = 'disabled';
    	opener.document.userInfo.id.readOnly=true;
    	
    	window.close();
    }
 
 </script>

</body>