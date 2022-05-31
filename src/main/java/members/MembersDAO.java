package members;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import common.DBConnPool;
import product.ProductDTO;

public class MembersDAO {
	private Connection con;
	private PreparedStatement psmt;
	private ResultSet rs;
	
		public MembersDAO() {
			try {
				Context initCtx = new InitialContext();
				Context ctx = (Context)initCtx.lookup("java:comp/env");
				DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
					
				con = source.getConnection();
			}catch (Exception e) {
				System.out.println("DB 연결 중 예외 발생");
				e.printStackTrace();
			}
		}
	
public void insertMembers(MembersDTO dto) throws SQLException {
//		Connection con = null;
//		PreparedStatement psmt = null;
		
		try {
			con = DBConnPool.getConnection();
			con.setAutoCommit(false);
			String query = "INSERT INTO MEMBERS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName()); 
            psmt.setString(2, dto.getId());
            psmt.setString(3, dto.getPass());
            psmt.setString(4, dto.getPasscheck());
            psmt.setString(5, dto.getEmail());
            psmt.setString(6, dto.getPhonenum());
            psmt.setString(7, dto.getType());
            psmt.setString(8, dto.getMemberPost());
            psmt.setString(9, dto.getMemberAddr());
            psmt.setString(10, dto.getMemberDetail());
			
			psmt.executeUpdate();
			con.commit();
		} catch (ClassNotFoundException | NamingException | SQLException e) {
			con.rollback();
		} finally {
			try {
				if(psmt != null)
					psmt.close();
				if(con != null)
					con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public int loginCheck(String userId, String userPw)  {
        String dbPW = "";
        int x = -1;
 
        try {
            String query = ("SELECT userPw FROM MEMBERS WHERE userID=?");
 
            con = DBConnPool.getConnection();
            psmt = con.prepareStatement(query);
            psmt.setString(1, userId);
            rs = psmt.executeQuery();
 
            if (rs.next()) 
            {
                dbPW = rs.getString("userPw"); 
 
                if (dbPW.equals(userPw)) 
                    x = 1; 
                else                  
                    x = 0;
                
            } else {
                x = -1; 
            }
 
            return x;
 
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( psmt != null ) { 
                	psmt.close(); 
                	psmt=null; 
                }
                if ( con != null ) { 
                	con.close(); 
                	con=null;    
                }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end loginCheck()
	
	//아이디를 피라미터로 받아 회원정보를 받아옵니다
    public MembersDTO checkMembersDTO(String uid) {
        MembersDTO dto = new MembersDTO();
        String query = "SELECT members FROM members WHERE id = ?";
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, uid);
            rs=psmt.executeQuery();
            
            if(rs.next()) {
            	dto.setId(rs.getString("uid"));
                dto.setPass(rs.getString(2));
                dto.setName(rs.getString(3));
                dto.setPasscheck(rs.getString(4));    
                dto.setEmail(rs.getString(5));
                dto.setPhonenum(rs.getString(6));
                dto.setType(rs.getString(7));
                dto.setMemberAddr(rs.getString(8));
                dto.setMemberPost(rs.getString(9));
                dto.setMemberDetail(rs.getString(10));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }                
        return dto;
    }
    
 	//아이디가 멤버테이블에 존재하는지 체크하는 메서드
    public int joinIdCheck(String id){
    	int result = -1;
    	try {
    		String query = "SELECT id FROM members WHERE id=?";
    		psmt = con.prepareStatement(query);
    		psmt.setString(1, id);

    		rs = psmt.executeQuery();


    		if(rs.next()){	
    			result = 0;
    		}else{
    			result = 1;
    		}

    		System.out.println("�븘�씠�뵒 以묐났泥댄겕寃곌낵 : "+result);
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return result;
    }
    
  //회원정보 수정
    public MembersDTO getMembertoEdit(String uid, String upass) {
        MembersDTO dto = new MembersDTO(); 
        String query = "SELECT * FROM members WHERE id = ? AND pass = ?";
        
        try {
            psmt = con.prepareStatement(query); 
            psmt.setString(1, uid);        
            psmt.setString(2, upass);        
            rs=psmt.executeQuery(); 
            
            if(rs.next()) {
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString(1));
                dto.setPasscheck(rs.getString(4));
                dto.setEmail(rs.getString(5));
                dto.setPhonenum(rs.getString(6));
                dto.setMemberPost(rs.getString(8));
                dto.setMemberAddr(rs.getString(9));
                dto.setMemberDetail(rs.getString(10));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }                
        return dto;
    }
    
    //로그인에 필요한 아이디와 비밀번호를 피마리터로 받아 회원정보를 받아옴
    public MembersDTO getMemberDTO(String uid, String upass) {
        MembersDTO dto = new MembersDTO();
        String query = "SELECT * FROM members WHERE id = ? AND pass = ?";
        
        try {//荑쇰━ �떎�뻾
            psmt = con.prepareStatement(query);
            psmt.setString(1, uid);
            psmt.setString(2, upass);
            rs=psmt.executeQuery();
            
            if(rs.next()) {
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString(3));
                dto.setPasscheck(rs.getString(4));    
                dto.setEmail(rs.getString(5));
                dto.setPhonenum(rs.getString(6));
                dto.setType(rs.getString(7));
                dto.setMemberAddr(rs.getString(8));
                dto.setMemberPost(rs.getString(9));
                dto.setMemberDetail(rs.getString(10));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }                
        return dto;
    }
    // 회원가입용 메서드
    public int insertDTO(MembersDTO dto) {
        int result = 0;
        try {
            String query = "INSERT INTO members ( "
                + " name,id,pass,passcheck,email,phonenum,type,memberpost,memberaddr,memberdetail) "
                + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getName()); 
            psmt.setString(2, dto.getId());
            psmt.setString(3, dto.getPass());
            psmt.setString(4, dto.getPasscheck());
            psmt.setString(5, dto.getEmail());
            psmt.setString(6, dto.getPhonenum());
            psmt.setString(7, dto.getType());
            psmt.setString(8, dto.getMemberPost());
            psmt.setString(9, dto.getMemberAddr());
            psmt.setString(10, dto.getMemberDetail());
            
            result = psmt.executeUpdate(); 
        }
        catch (Exception e) {
            System.out.println("회원가입 중 예외 발생"); 
            e.printStackTrace();
        }
        return result;
    }
    // 회원정보 수정
    public int updateEdit(MembersDTO dto) { //매개변수 DTO 객체는 수정할 내용
        int result = 0;
        try {
            // 쿼리문 템플릿 작성
            String query = "UPDATE members SET "
            			 //+ " name=?, id=?, pass=?, passcheck=?, email=?, phonenum=?, type=? "
            			 + " name=?, pass=?, passcheck=?, email=?, phonenum=?, type=?,memberpost=? ,memberaddr=? ,memberdetail=?  "
            			 + " WHERE id=?";
            // 쿼리문 완성 / 제목,내용,게시물번호 입력
            psmt = con.prepareStatement(query); 
            psmt.setString(1, dto.getName());
            psmt.setString(2, dto.getPass());
            psmt.setString(3, dto.getPasscheck());
            psmt.setString(4, dto.getEmail());
            psmt.setString(5, dto.getPhonenum());
            psmt.setString(6, dto.getType());            
            psmt.setString(7, dto.getMemberPost());
            psmt.setString(8, dto.getMemberAddr());
            psmt.setString(9, dto.getMemberDetail());
            psmt.setString(10, dto.getId());
            // 쿼리문 실행
            result = psmt.executeUpdate();          
        }
        catch (Exception e) {
            System.out.println("회원정보 수정 중 예외 발생"); 
            e.printStackTrace();
        }
        return result; // 결과 반환 (업데이트된 컬럼)
    }
    // 주어진 일련번호에 해당하는 게시물을 DTO에 담아 반환합니다.
 			public MembersDTO findId(String email) {
 				MembersDTO dto = new MembersDTO(); //DTO 객체 생성
 				String query = "SELECT * FROM members WHERE email=?"; //쿼리문 탬플릿 준비
 				try {
 					psmt = con.prepareStatement(query); // 쿼리문 준비
 					psmt.setString(1, email);
 					rs = psmt.executeQuery(); // 쿼리문 실행
 					
 					if (rs.next()) {
 						dto.setId(rs.getString("id"));
 					}
 				}catch (Exception e) {
 					System.out.println("아이디 조회 중 예외 발생");
 					e.printStackTrace();
 				}
 				return dto; //결과 반환
 			}
    //DB연결 종료
    public void close() {
        try {
            if(rs != null) rs.close();
            if(con != null) con.close();
            if(psmt != null) psmt.close();
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
