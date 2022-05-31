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
		public Connection con; //데이터베이스 연결
		public Statement stmt; //인파라미터가 없는 정적 쿼리문을 실행할 때 사용
		public PreparedStatement psmt; //인피라미터가 있는 동적 쿼리문을 실행할 때 사용
		public ResultSet rs; //select 쿼리문의 결과를 저장할 때 사용 됨

		// 기본 생성자
		public ProductDAO() {
			try {
				// 커넥션 풀(DataSource)얻기
				Context initCtx = new InitialContext();
				//찾기,root위치가 됨 / 모든 자원은 java:comp/env 아래에 위치하게 됨
				Context ctx = (Context)initCtx.lookup("java:comp/env");
				//dbcp_myoracle 자원을 얻어와라 / name의 속성값이 됨, key와 비슷
				DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
					
				// 커넥션 풀을 통해 연결 얻기
				con = source.getConnection();
				
			}catch (Exception e) {
				System.out.println("DB 커넥션 풀 연결 실패");
				e.printStackTrace();
			}
		}
		
		// 상품게시글 데이터를 받아 DB에 추가합니다. 
	    public int addProduct(ProductDTO dto) {//ProductDTO 타입의 매개변수를 받은 후 데이터를 insert
	        int result = 0;
	        try {
	            // INSERT 쿼리문 작성 
	            String query = "INSERT INTO product ( "
	                + " productId,pname,unitprice,description,manufacturer,category,unitsInStock,condition,filename) "
	                + " VALUES ( "
	                + " ?, ?, ?, ?, ?, ?, ?, ?, ?)"; //제목, 내용, 아이디를 모두 인파라미터(?)로 설정
	            psmt = con.prepareStatement(query); // 동적 쿼리 :사용자가 입력한 값을 대입
	            psmt.setString(1, dto.getProductId()); 
	            psmt.setString(2, dto.getPname()); 
	            psmt.setInt(3, dto.getUnitPrice()); //인파라미터가 있는 동적 쿼리이므로 PreparedStatement 객체를 생성
	            psmt.setString(4, dto.getDescription());
	            psmt.setString(5, dto.getManufacturer());
	            psmt.setString(6, dto.getCategory());
	            psmt.setInt(7, dto.getUnitsInStock());
	            psmt.setString(8, dto.getCondition());
	            psmt.setString(9, dto.getFilename());
	            
	            result = psmt.executeUpdate(); //INSERT 쿼리를 실행하면 성공적으로 추가한 행의 개수를 돌려줌
	        }
	        catch (Exception e) {
	            System.out.println("상품 등록 중 예외 발생"); 
	            e.printStackTrace();
	        }
	        return result; //값을 JSP로 반환
	    }
	    
	 // 검색 조건에 맞는 게시물 목록을 반환합니다(페이징 기능 지원)
		   public List<ProductDTO> selectListPage(Map<String, Object> map) {
		      List<ProductDTO> board = new Vector<ProductDTO>();
		      String query = " "
		                    + "SELECT * FROM ( "
		                    + "      SELECT Tb.*, ROWNUM rNum FROM ( "
		                    + "            SELECT * FROM product ";
		      
		      if (map.get("searchWord") != null)//함수 검색어 유무 조건추가로 where절을 추가하게 됨
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
		         System.out.println("게시물 조회중 에러 발생");
		         e.printStackTrace();
		      }
		      return board;
		   }
		
		// 검색 조건에 맞는 게시물의 개수를 반환합니다.
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
				System.out.println("게시물 카운트 중 예외 발생");
				e.printStackTrace();
			}
			return totalCount;
		}
		
		// 주어진 일련번호에 해당하는 게시물을 DTO에 담아 반환합니다.
		public ProductDTO selectView(String productid) {
			ProductDTO dto = new ProductDTO(); //DTO 객체 생성
			String query = "SELECT * FROM product WHERE productid=?"; //쿼리문 탬플릿 준비
			try {
				psmt = con.prepareStatement(query); // 쿼리문 준비
				psmt.setString(1, productid); // 인피라미터 설정
				rs = psmt.executeQuery(); // 쿼리문 실행
				
				if (rs.next()) { // 결과를 DTO 객체에 저장
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
				System.out.println("게시물 상세보기 중 예외 발생");
				e.printStackTrace();
			}
			return dto; //결과 반환
		}
		
		//주어진 일련번호에 해당하는 게시물의 조회수를 1 증가시킵니다.
		public void updateVisitCount(String ProductId) {
			String query = "UPDATE mvcboard SET "
						 + " visitcount = visitcount +1 "
						 + " WHERE idx=?";
			try {
				psmt = con.prepareStatement(query);
				psmt.setString(1, ProductId);
				psmt.executeQuery();
			}catch (Exception e) {
				System.out.println("게시물 조회수 증가 중 예외 발생");
				e.printStackTrace();
			}
		}
		public void getProductById(String id) {
			
		}
		//addcart를 위한 모든 상품정보 가져오기
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
		         System.out.println("게시물 조회중 에러 발생");
		         e.printStackTrace();
		      }
		      return allList;
		   }
		// 주문완료 정보를 DB에 삽입
	    public int productOrder(ProductDTO dto) {//ProductDTO 타입의 매개변수를 받은 후 데이터를 insert
	        int result = 0;
	        try {
	            // INSERT 쿼리문 작성 
	            String query = "INSERT INTO productorder ( "
	                + " cartId,name,memberPost,memberAddr,memberDetail,cardNum,cardDate,cardCvc) "
	                + " VALUES ( "
	                + " ?, ?, ?, ?, ?, ?, ?, ?)"; //제목, 내용, 아이디를 모두 인파라미터(?)로 설정
	            psmt = con.prepareStatement(query); // 동적 쿼리 :사용자가 입력한 값을 대입
	            psmt.setString(1, dto.getCartId()); 
	            psmt.setString(2, dto.getName()); 
	            psmt.setString(3, dto.getMemberPost());
	            psmt.setString(4, dto.getMemberAddr());
	            psmt.setString(5, dto.getMemberDetail());
	            psmt.setString(6, dto.getCardNum());
	            psmt.setString(7, dto.getCardDate());
	            psmt.setString(8, dto.getCardCvc());
	            
	            result = psmt.executeUpdate(); //INSERT 쿼리를 실행하면 성공적으로 추가한 행의 개수를 돌려줌
	        }
	        catch (Exception e) {
	            System.out.println("주문 접수 중 예외 발생"); 
	            e.printStackTrace();
	        }
	        return result; //값을 JSP로 반환
	    }
	    
	 // 주어진 일련번호에 해당하는 게시물을 DTO에 담아 반환합니다.
	 		public ProductDTO viewCartId(String cartId) {
	 			ProductDTO dto = new ProductDTO(); //DTO 객체 생성
	 			String query = "SELECT * FROM productorder WHERE cartid=?"; //쿼리문 탬플릿 준비
	 			try {
	 				psmt = con.prepareStatement(query); // 쿼리문 준비
	 				psmt.setString(1, cartId); // 인피라미터 설정
	 				rs = psmt.executeQuery(); // 쿼리문 실행
	 				
	 				if (rs.next()) { // 결과를 DTO 객체에 저장
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
	 				System.out.println("게시물 상세보기 중 예외 발생");
	 				e.printStackTrace();
	 			}
	 			return dto; //결과 반환
	 		}
	 	
		
		//연결 해제(자원 반납)
	    public void close() {
	        try {
	            if(rs != null) rs.close();
	            if(stmt != null) stmt.close();
	            if(con != null) con.close();
	            if(psmt != null) psmt.close(); // 자동으로 커넥션 풀로 반납됨
	            	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
}