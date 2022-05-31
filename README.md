# T1Fan
T1 Fan Community


웹 쇼핑몰 JSP 프로젝트

환경
언어 : Java(Tm) SE Development Kit 11.0.13 
Server : Appache Tomcat 9.0 Tomcat9
DBMS : Oracle Database 11g Express Edition - sqldeveloper

1. 해당 계정 및 권한 부여
	1-1. cmd 실행
	1-2. sqlplus "/as sysdba"	입력
	1-4. grant resource, connect, dba, unlimited tablespace to scott;	입력 //scott계정을 사용합니다
	1-5. commit;	입력

2. 새 DB 만들기
	2-1. sqldeveloper 실행
	2-2. Oracle 접속을 우클릭하여 새 접속 클릭
	2-3. resources/sql 폴더에 있는 회원테이블.sql기본 테이블 및 관리자 아이디 삽입

3. 이클립스-DB 연결
	3-1. Database Source Explorer 에서 Database Connections 우클릭하여 New 클릭
	3-2. Oracle 클릭 -> Next -> Drivers 바로 우측 버튼 클릭하여 New Driver Definition 진입
	3-3. System Version이 11인 Oracle Thin Driver 클릭 후 JAR List 탭 클릭
	3-4. ojdbc14.jar 클릭 이후 Edit JAR/Zip 클릭하여 워크스페이스 내부 webapp/resources/ojdbc6.jar 파일 선택
	3-5. Properties 탭 클릭 후 Connection URL의 db를 xe로 변경, Database Name의 db를 xe로 변경 후 OK
	3-6. Host 란에 localhost 입력, User name에 scott, Password에 tiger 입력 후 Finish 클릭

4. 테이블 및 더미데이터 생성하기
	4-1. 생성한 DB Connect.
	4-2. resources/sql 폴더에 있는 모든 테이블 생성 및 더미데이터 추가 후 commit

5. 이미지 준비
	5-1) processAddProduct.jsp 에서 이미지파일을 저장할 절대 경로를 수정 후 해당 폴더에 이미지 추가

6. 서버 설정	
	6-1) Tomcat admin port : 8005
	       HTTP/1.1 : 8080

7. 실행
	7-1) IE로 실행시 메인화면의 Map API가 적용되지 않으므로 Chrome, Whale, Edge 등 사용 권장.
	7-2) 메인화면인 welcome.jsp 실행 //  http://localhost:8080/welcome.jsp
	7-3) 로그인 초기(관리자) 데이터
	      ID : admin ,	Password : admin
	      해당 계정이 아닌 다른 계정 생성 후 로그인 시
	      제품 등록 등 일부 기능 사용 불가능
	
8. 기능 나열
	: 다음 주소 API
	  회원가입 	 /  로그인                   /  로그아웃   /  회원 정보 수정
	  제품 목록  /  제품 상세 확인           /  제품 추가
	  장바구니 추가  	 /  장바구니 일부 삭제    /  장바구니 모두 삭제
	  주문 정보 입력
	  게시판 목록 확인 	 /  게시글 상세확인        / 게시글 수정  /  게시글 삭제  / 게시글 작성
