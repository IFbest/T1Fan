# T1Fan
T1 Fan Community

![image3](https://user-images.githubusercontent.com/92713950/171104356-9c38f4f1-cbb6-491e-8c6d-1f75155b6a74.png)

![image4](https://user-images.githubusercontent.com/92713950/171104363-86ce1bca-7d86-4586-bf43-5753b9bd0c0f.png)

![image5](https://user-images.githubusercontent.com/92713950/171104372-d8d6ed8a-0347-413d-8e37-366694f19c72.png)

![image6](https://user-images.githubusercontent.com/92713950/171104378-ad936023-d03b-4d0d-8e23-1ffc572f12c0.png)

![image7](https://user-images.githubusercontent.com/92713950/171104381-6a7255a1-c0e1-4221-b3c9-35deddb7dfd7.png)

![image8](https://user-images.githubusercontent.com/92713950/171104389-4b8f6016-3f2d-484f-aef3-60bebbf9a55e.png)

![image9](https://user-images.githubusercontent.com/92713950/171104394-735bdfe9-a9b4-424b-b6df-7d870a3339da.png)

![image10](https://user-images.githubusercontent.com/92713950/171104398-55eecf8f-5f13-4658-9d24-0f042aff3f20.png)

![image11](https://user-images.githubusercontent.com/92713950/171104402-6b76792b-a257-46cb-8c9e-79cfe6722bfa.png)

![image12](https://user-images.githubusercontent.com/92713950/171104412-d2182b90-7932-4ce5-9a77-a582e00ac164.png)


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
	7-1) Chrome, Whale, Edge 등 사용 권장.
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
