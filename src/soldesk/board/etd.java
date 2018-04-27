package soldesk.board;
import java.sql.*;
import javax.naming.*;
import java.util.*;
public class etd {
	
private static etd instance=new etd();
	
	public static etd getInstance() {
		return instance;
	}
	private etd() {
	}
	private Connection getConnection() throws Exception{
		String jdbcDriver="jdbc:apache:commons:dbcp:/pool";
		return DriverManager.getConnection(jdbcDriver);
	}
	//writePro.jsp
	public void insertArticle(BoardDataBean article) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//답변글이지 일반글인지를 구분해서 입력시켜주는 로직
		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		int number=0;
		String sql="";
		
		try {
			conn = getConnection();
			
			pstmt=conn.prepareStatement("select max(num) from KWBOARD");
			rs=pstmt.executeQuery();
			
			if(rs.next())
				number=rs.getInt(1)+1;
			else
				number=1;
			
			if(num!=0)
			{
				sql="update kwboard set re_step=re_step+1 where ref=? and re_step>?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				pstmt.executeUpdate();
				re_step=re_step+1;
				re_level=re_level+1;
			}else {
				ref=number;
				re_step=0;
				re_level=0;
			}
			//쿼리를 작성
			sql="insert int kwboard(num,writer, email, subject, passwd, reg_date, "
					+ "ref, re_step, re_level, content,ip) values(board_num.NEXTVAL, ?, ?, ?,?,?,?,?,?,?,?)";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, article.getWriter());
			pstmt.setString(2, article.getEmail());
			pstmt.setString(3, article.getSubject());
			pstmt.setString(4, article.getPasswd());
			pstmt.setTimestamp(5, article.getReg_date());
			pstmt.setInt(6, ref);
			pstmt.setInt(7, re_step);
			pstmt.setInt(8, re_level);
			pstmt.setString(9, article.getContent());
			pstmt.setString(10, article.getIp());
			
			pstmt.executeUpdate();			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(rs!=null) try { rs.close(); } catch(SQLException ex) {}
			if(pstmt!=null) try { pstmt.close(); } catch(SQLException ex) {}
			if(conn!=null) try { conn.close(); } catch(SQLException ex) {}
		}
	}
}
