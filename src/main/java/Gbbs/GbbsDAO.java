package Gbbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class GbbsDAO {
   private Connection con;
   private ResultSet rs;
   
   public GbbsDAO() {
      try {
         // 1. JDBC드라이버 로드
         // 형태 : Class.forName("JDBC 드라이버 이름")
         // JDBC 드라이버에 해당하는 클래스들은 이 메소드를 통해 로딩될 때 자동으로 JDBC 드라이버로 등록함
         // 데이터베이스와 연결할 드라이버 클래스를 찾아서 로드하는 역할을 수행함
         Class.forName("oracle.jdbc.OracleDriver");
         // DB에 연결
         // oracle DBMS에 따른 데이터베이스 URL
         String url = "jdbc:oracle:thin:@localhost:1521:xe"; // sid
         String id = "musthave";
         String pwd = "1234";
         // 2. 데이터베이스에 연결 : DriverManager.getConnection()메소드를 호출하여 연결함
         // 형태 : getConnection(연결문자열, DB의 id, DB의 pw);
         // 연결문자열 형태 : "jdbc:Driver 종류:IP:포트번호/DB명"
         con = DriverManager.getConnection(url, id, pwd);
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   // 작성일 부여
   public String getDate() {
      String query = "SELECT SYSDATE FROM DUAL";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         rs = stmt.executeQuery();
         if(rs.next()) {
            return rs.getString(1); // 현재 날짜 반환
         }
      }
      catch(Exception e) {
         e.printStackTrace();
      }
      return "";      //데이터베이스 오류
   }
   // 게시글 번호 부여
   public int getNext() {
      String query = "SELECT gbbsid FROM gbbs ORDER BY gbbsid DESC";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         rs = stmt.executeQuery();
         
         if(rs.next()) {
            return rs.getInt(1) + 1;
         }
         return 1; // 첫 번째 게시물인 경우
      } catch (Exception e) {
         e.printStackTrace();
      }
      return -1; // 데이터베이스 오류 시
   }
   // 게시글 작성
   public int write(String gbbsTitle, String id, String gbbsContent) {
      String query = "INSERT INTO GBBS (gbbsid, gbbstitle, id, gbbsdate, gbbscontent, gbbsavailable) VALUES (?, ?, ?, ?, ?, ?)";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setInt(1, getNext());
         stmt.setString(2, gbbsTitle);
         stmt.setString(3, id);
         stmt.setString(4, getDate());
         stmt.setString(5, gbbsContent);
         stmt.setInt(6, 1);
         
         return stmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return -1; // 데이터베이스 오류 시
   }
   // 게시판의 게시글을 가져옴(10개씩 페이징처리)
   public ArrayList<GbbsDTO> getList(int pageNumber) {
      String query = "SELECT * FROM (SELECT * FROM gbbs WHERE gbbsid < ? AND gbbsAvailable = 1 ORDER BY gbbsid DESC) WHERE ROWNUM <= 10";
      ArrayList<GbbsDTO> list = new ArrayList<GbbsDTO>();
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setInt(1, getNext() - (pageNumber - 1) * 10);
         rs = stmt.executeQuery();      
         while(rs.next()) {
            GbbsDTO dto = new GbbsDTO();
            dto.setGbbsId(rs.getInt(1));
            dto.setGbbsTitle(rs.getString(2));
            dto.setId(rs.getString(3));
            dto.setGbbsDate(rs.getString(4));
            dto.setGbbsContent(rs.getString(5));
            dto.setGbbsAvailable(rs.getInt(6));
            list.add(dto);
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return list; 
   }
   // 페이징 처리
   public boolean nextPage(int pageNumber) {
      String query = "SELECT * FROM (SELECT * FROM gbbs WHERE gbbsID < ? AND gbbsAvailable = 1 ORDER BY gbbsid DESC) WHERE ROWNUM <= 10";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setInt(1, getNext() - (pageNumber - 1) * 10);
         rs = stmt.executeQuery();      
         if(rs.next()) {
            return true; // 다음 페이지로 넘어감
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return false; // 다음 페이지로 넘어가지 않음
   }
   // 글 내용 불러옴
   public GbbsDTO getGbbs(int gbbsId) {
      String query = "SELECT * FROM gbbs WHERE gbbsid=?";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setInt(1, gbbsId);
         rs = stmt.executeQuery();
         if(rs.next()) {
            GbbsDTO dto = new GbbsDTO();
            dto.setGbbsId(rs.getInt(1));
            dto.setGbbsTitle(rs.getString(2));
            dto.setId(rs.getString(3));
            dto.setGbbsDate(rs.getString(4));
            dto.setGbbsContent(rs.getString(5));
            dto.setGbbsAvailable(rs.getInt(6));
            return dto; // 해당 글이 있을 경우
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null; // 해당 글이 없을 경우
   }
   // 글 수정 (파일 넣어야됨)
   public int update(int gbbsId, String gbbsTitle, String gbbsContent) {
      String query = "UPDATE GBBS SET gbbstitle=?, gbbscontent=? WHERE gbbsid=?";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setString(1, gbbsTitle);
         stmt.setString(2, gbbsContent);
         stmt.setInt(3, gbbsId);
         
         return stmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return -1; // 데이터베이스 오류 시
   }
   // 글 삭제
   public int delete(int gbbsId) {
      String query = "UPDATE GBBS SET gbbsAvailable=0 WHERE gbbsid=?";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setInt(1, gbbsId);
         
         return stmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return -1; // 데이터베이스 오류 시
   }
   // 
}