package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import product.ProductDTO;

public class ProductDAO {
		public Connection con; //�����ͺ��̽� ����
		public Statement stmt; //���Ķ���Ͱ� ���� ���� �������� ������ �� ���
		public PreparedStatement psmt; //���Ƕ���Ͱ� �ִ� ���� �������� ������ �� ���
		public ResultSet rs; //select �������� ����� ������ �� ��� ��

		// �⺻ ������
		public ProductDAO() {
			try {
				// Ŀ�ؼ� Ǯ(DataSource)���
				Context initCtx = new InitialContext();
				//ã��,root��ġ�� �� / ��� �ڿ��� java:comp/env �Ʒ��� ��ġ�ϰ� ��
				Context ctx = (Context)initCtx.lookup("java:comp/env");
				//dbcp_myoracle �ڿ��� ���Ͷ� / name�� �Ӽ����� ��, key�� ���
				DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
					
				// Ŀ�ؼ� Ǯ�� ���� ���� ���
				con = source.getConnection();
				
			}catch (Exception e) {
				System.out.println("DB Ŀ�ؼ� Ǯ ���� ����");
				e.printStackTrace();
			}
		}
		
		// ��ǰ�Խñ� �����͸� �޾� DB�� �߰��մϴ�. 
	    public int addProduct(ProductDTO dto) {//ProductDTO Ÿ���� �Ű������� ���� �� �����͸� insert
	        int result = 0;
	        try {
	            // INSERT ������ �ۼ� 
	            String query = "INSERT INTO product ( "
	                + " productId,pname,unitprice,description,manufacturer,category,unitsInStock,condition,filename) "
	                + " VALUES ( "
	                + " ?, ?, ?, ?, ?, ?, ?, ?, ?)"; //����, ����, ���̵� ��� ���Ķ����(?)�� ����
	            psmt = con.prepareStatement(query); // ���� ���� :����ڰ� �Է��� ���� ����
	            psmt.setString(1, dto.getProductId()); 
	            psmt.setString(2, dto.getPname()); 
	            psmt.setInt(3, dto.getUnitPrice()); //���Ķ���Ͱ� �ִ� ���� �����̹Ƿ� PreparedStatement ��ü�� ����
	            psmt.setString(4, dto.getDescription());
	            psmt.setString(5, dto.getManufacturer());
	            psmt.setString(6, dto.getCategory());
	            psmt.setInt(7, dto.getUnitsInStock());
	            psmt.setString(8, dto.getCondition());
	            psmt.setString(9, dto.getFilename());
	            
	            result = psmt.executeUpdate(); //INSERT ������ �����ϸ� ���������� �߰��� ���� ������ ������
	        }
	        catch (Exception e) {
	            System.out.println("��ǰ ��� �� ���� �߻�"); 
	            e.printStackTrace();
	        }
	        return result; //���� JSP�� ��ȯ
	    }
	    
	 // �˻� ���ǿ� �´� �Խù� ����� ��ȯ�մϴ�(����¡ ��� ����)
		   public List<ProductDTO> selectListPage(Map<String, Object> map) {
		      List<ProductDTO> board = new Vector<ProductDTO>();
		      String query = " "
		                    + "SELECT * FROM ( "
		                    + "      SELECT Tb.*, ROWNUM rNum FROM ( "
		                    + "            SELECT * FROM product ";
		      
		      if (map.get("searchWord") != null)//�Լ� �˻��� ���� �����߰��� where���� �߰��ϰ� ��
		      {
		         query += " WHERE " + map.get("searchField")
		                + " LIKE upper('%" + map.get("searchWord") + "%') ";
		      }
		      
		      query += "         ORDER BY productid DESC "
		            + "      ) Tb "   
		            + " ) "
		            + " WHERE rNum BETWEEN ? AND ?";
		      
		      try {
		         psmt = con.prepareStatement(query);
		         psmt.setString(1, map.get("start").toString());
		         psmt.setString(2, map.get("end").toString());
		         rs = psmt.executeQuery();
		         
		         while (rs.next()) {
		        	 ProductDTO dto = new ProductDTO();
			         dto.setProductId(rs.getString("productId"));
			         dto.setPname(rs.getString("pname"));
			         dto.setUnitPrice(rs.getInt("unitPrice"));
			         dto.setDescription(rs.getString("description"));
			         dto.setManufacturer(rs.getString("manufacturer"));
			         dto.setCategory(rs.getString("category"));
			         dto.setUnitsInStock(rs.getInt("unitsInStock"));
			         dto.setCondition(rs.getString("condition"));
			         dto.setFilename(rs.getString("filename"));
		            
		            board.add(dto);
		         }
		      }
		      catch (Exception e) {
		         System.out.println("�Խù� ��ȸ�� ���� �߻�");
		         e.printStackTrace();
		      }
		      return board;
		   }
		
		// �˻� ���ǿ� �´� �Խù��� ������ ��ȯ�մϴ�.
		public int selectCount(Map<String, Object> map) {
			int totalCount = 0;
			String searchWord = (String)map.get("searchWord");
			String searchField = (String)map.get("searchField");
			String query = "SELECT COUNT(*) FROM product";
			if (searchWord != null) {
				query += " WHERE " + searchField + " "
						+ "LIKE upper('%" + searchWord + "%')";
			}
			try {
				stmt = con.createStatement();
				rs = stmt.executeQuery(query);
				rs.next();
				totalCount = rs.getInt(1);
				
			}catch (Exception e) {
				System.out.println("�Խù� ī��Ʈ �� ���� �߻�");
				e.printStackTrace();
			}
			return totalCount;
		}
		
		// �־��� �Ϸù�ȣ�� �ش��ϴ� �Խù��� DTO�� ��� ��ȯ�մϴ�.
		public ProductDTO selectView(String productid) {
			ProductDTO dto = new ProductDTO(); //DTO ��ü ����
			String query = "SELECT * FROM product WHERE productid=?"; //������ ���ø� �غ�
			try {
				psmt = con.prepareStatement(query); // ������ �غ�
				psmt.setString(1, productid); // ���Ƕ���� ����
				rs = psmt.executeQuery(); // ������ ����
				
				if (rs.next()) { // ����� DTO ��ü�� ����
					dto.setProductId(rs.getString("productId"));
			        dto.setPname(rs.getString("pname"));
			        dto.setUnitPrice(rs.getInt("unitPrice"));
			        dto.setDescription(rs.getString("description"));
			        dto.setManufacturer(rs.getString("manufacturer"));
			        dto.setCategory(rs.getString("category"));
			        dto.setUnitsInStock(rs.getInt("unitsInStock"));
			        dto.setCondition(rs.getString("condition"));
			        dto.setFilename(rs.getString("filename"));
				}
			}catch (Exception e) {
				System.out.println("�Խù� �󼼺��� �� ���� �߻�");
				e.printStackTrace();
			}
			return dto; //��� ��ȯ
		}
		
		//�־��� �Ϸù�ȣ�� �ش��ϴ� �Խù��� ��ȸ���� 1 ������ŵ�ϴ�.
		public void updateVisitCount(String ProductId) {
			String query = "UPDATE mvcboard SET "
						 + " visitcount = visitcount +1 "
						 + " WHERE idx=?";
			try {
				psmt = con.prepareStatement(query);
				psmt.setString(1, ProductId);
				psmt.executeQuery();
			}catch (Exception e) {
				System.out.println("�Խù� ��ȸ�� ���� �� ���� �߻�");
				e.printStackTrace();
			}
		}
		public void getProductById(String id) {
			
		}
		//addcart�� ���� ��� ��ǰ���� ��������
		public ArrayList<ProductDTO> getAllProducts() {
		      ArrayList<ProductDTO> allList = new ArrayList<ProductDTO>();
		      String query = " SELECT * FROM product ";
		      
		      try {
		         psmt = con.prepareStatement(query);
		         rs = psmt.executeQuery();
		         
		         while (rs.next()) {
		        	 ProductDTO dto = new ProductDTO();
			         dto.setProductId(rs.getString("productId"));
			         dto.setPname(rs.getString("pname"));
			         dto.setUnitPrice(rs.getInt("unitPrice"));
			         dto.setDescription(rs.getString("description"));
			         dto.setManufacturer(rs.getString("manufacturer"));
			         dto.setCategory(rs.getString("category"));
			         dto.setUnitsInStock(rs.getInt("unitsInStock"));
			         dto.setCondition(rs.getString("condition"));
			         dto.setFilename(rs.getString("filename"));
		            
		            allList.add(dto);
		         }
		      }
		      catch (Exception e) {
		         System.out.println("�Խù� ��ȸ�� ���� �߻�");
		         e.printStackTrace();
		      }
		      return allList;
		   }
		// �ֹ��Ϸ� ������ DB�� ����
	    public int productOrder(ProductDTO dto) {//ProductDTO Ÿ���� �Ű������� ���� �� �����͸� insert
	        int result = 0;
	        try {
	            // INSERT ������ �ۼ� 
	            String query = "INSERT INTO productorder ( "
	                + " cartId,name,memberPost,memberAddr,memberDetail,cardNum,cardDate,cardCvc) "
	                + " VALUES ( "
	                + " ?, ?, ?, ?, ?, ?, ?, ?)"; //����, ����, ���̵� ��� ���Ķ����(?)�� ����
	            psmt = con.prepareStatement(query); // ���� ���� :����ڰ� �Է��� ���� ����
	            psmt.setString(1, dto.getCartId()); 
	            psmt.setString(2, dto.getName()); 
	            psmt.setString(3, dto.getMemberPost());
	            psmt.setString(4, dto.getMemberAddr());
	            psmt.setString(5, dto.getMemberDetail());
	            psmt.setString(6, dto.getCardNum());
	            psmt.setString(7, dto.getCardDate());
	            psmt.setString(8, dto.getCardCvc());
	            
	            result = psmt.executeUpdate(); //INSERT ������ �����ϸ� ���������� �߰��� ���� ������ ������
	        }
	        catch (Exception e) {
	            System.out.println("�ֹ� ���� �� ���� �߻�"); 
	            e.printStackTrace();
	        }
	        return result; //���� JSP�� ��ȯ
	    }
	    
	 // �־��� �Ϸù�ȣ�� �ش��ϴ� �Խù��� DTO�� ��� ��ȯ�մϴ�.
	 		public ProductDTO viewCartId(String cartId) {
	 			ProductDTO dto = new ProductDTO(); //DTO ��ü ����
	 			String query = "SELECT * FROM productorder WHERE cartid=?"; //������ ���ø� �غ�
	 			try {
	 				psmt = con.prepareStatement(query); // ������ �غ�
	 				psmt.setString(1, cartId); // ���Ƕ���� ����
	 				rs = psmt.executeQuery(); // ������ ����
	 				
	 				if (rs.next()) { // ����� DTO ��ü�� ����
	 					dto.setCartId(rs.getString("cartId"));
	 			        dto.setName(rs.getString("name"));
	 			        dto.setMemberPost(rs.getString("memberPost"));
	 			        dto.setMemberAddr(rs.getString("memberAddr"));
	 			        dto.setMemberDetail(rs.getString("memberDetail"));
	 			        dto.setCardNum(rs.getString("cardNum"));
	 			        dto.setCardDate(rs.getString("cardDate"));
	 			        dto.setCardCvc(rs.getString("cardCvc"));
	 				}
	 			}catch (Exception e) {
	 				System.out.println("�Խù� �󼼺��� �� ���� �߻�");
	 				e.printStackTrace();
	 			}
	 			return dto; //��� ��ȯ
	 		}
	 	
		
		//���� ����(�ڿ� �ݳ�)
	    public void close() {
	        try {
	            if(rs != null) rs.close();
	            if(stmt != null) stmt.close();
	            if(con != null) con.close();
	            if(psmt != null) psmt.close(); // �ڵ����� Ŀ�ؼ� Ǯ�� �ݳ���
	            	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}