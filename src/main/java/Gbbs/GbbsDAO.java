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
         // 1. JDBC����̹� �ε�
         // ���� : Class.forName("JDBC ����̹� �̸�")
         // JDBC ����̹��� �ش��ϴ� Ŭ�������� �� �޼ҵ带 ���� �ε��� �� �ڵ����� JDBC ����̹��� �����
         // �����ͺ��̽��� ������ ����̹� Ŭ������ ã�Ƽ� �ε��ϴ� ������ ������
         Class.forName("oracle.jdbc.OracleDriver");
         // DB�� ����
         // oracle DBMS�� ���� �����ͺ��̽� URL
         String url = "jdbc:oracle:thin:@localhost:1521:xe"; // sid
         String id = "musthave";
         String pwd = "1234";
         // 2. �����ͺ��̽��� ���� : DriverManager.getConnection()�޼ҵ带 ȣ���Ͽ� ������
         // ���� : getConnection(���Ṯ�ڿ�, DB�� id, DB�� pw);
         // ���Ṯ�ڿ� ���� : "jdbc:Driver ����:IP:��Ʈ��ȣ/DB��"
         con = DriverManager.getConnection(url, id, pwd);
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   // �ۼ��� �ο�
   public String getDate() {
      String query = "SELECT SYSDATE FROM DUAL";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         rs = stmt.executeQuery();
         if(rs.next()) {
            return rs.getString(1); // ���� ��¥ ��ȯ
         }
      }
      catch(Exception e) {
         e.printStackTrace();
      }
      return "";      //�����ͺ��̽� ����
   }
   // �Խñ� ��ȣ �ο�
   public int getNext() {
      String query = "SELECT gbbsid FROM gbbs ORDER BY gbbsid DESC";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         rs = stmt.executeQuery();
         
         if(rs.next()) {
            return rs.getInt(1) + 1;
         }
         return 1; // ù ��° �Խù��� ���
      } catch (Exception e) {
         e.printStackTrace();
      }
      return -1; // �����ͺ��̽� ���� ��
   }
   // �Խñ� �ۼ�
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
      return -1; // �����ͺ��̽� ���� ��
   }
   // �Խ����� �Խñ��� ������(10���� ����¡ó��)
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
   // ����¡ ó��
   public boolean nextPage(int pageNumber) {
      String query = "SELECT * FROM (SELECT * FROM gbbs WHERE gbbsID < ? AND gbbsAvailable = 1 ORDER BY gbbsid DESC) WHERE ROWNUM <= 10";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setInt(1, getNext() - (pageNumber - 1) * 10);
         rs = stmt.executeQuery();      
         if(rs.next()) {
            return true; // ���� �������� �Ѿ
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return false; // ���� �������� �Ѿ�� ����
   }
   // �� ���� �ҷ���
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
            return dto; // �ش� ���� ���� ���
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null; // �ش� ���� ���� ���
   }
   // �� ���� (���� �־�ߵ�)
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
      return -1; // �����ͺ��̽� ���� ��
   }
   // �� ����
   public int delete(int gbbsId) {
      String query = "UPDATE GBBS SET gbbsAvailable=0 WHERE gbbsid=?";
      try {
         PreparedStatement stmt = con.prepareStatement(query);
         stmt.setInt(1, gbbsId);
         
         return stmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return -1; // �����ͺ��̽� ���� ��
   }
   // 
}