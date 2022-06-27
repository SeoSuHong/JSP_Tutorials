package ch07;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterMgrVector {
	
	DBConnectionMgr pool;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public RegisterMgrVector() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public Boolean loginRegister(String id, String pw) {
		Boolean loginCon = false;
		String query = "SELECT count(*) FROM mydb WHERE id=? AND pw=?";
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next() && rs.getInt(1) > 0) loginCon = true;

			pool.freeConnection(conn, pstmt, rs);
		} catch(Exception e) {
			System.out.println("오류 : " + e.getMessage());
		}
		
		return loginCon;
	}
}
