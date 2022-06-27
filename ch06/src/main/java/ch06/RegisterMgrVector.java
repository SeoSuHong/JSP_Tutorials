package ch06;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class RegisterMgrVector {
	
	DBConnectionMgr pool;
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	public RegisterMgrVector() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public Vector<RegisterBean> getRegisterVector() {
		Vector<RegisterBean> vlist = new Vector<RegisterBean>();
		String query = "SELECT * FROM 고객";
		
		try {
			conn = pool.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				RegisterBean bean = new RegisterBean();
				bean.set고객id(rs.getString("고객id"));
				bean.set고객이름(rs.getString("고객이름"));
				bean.set나이(rs.getInt("나이"));
				bean.set등급(rs.getString("등급"));
				bean.set직업(rs.getString("직업"));
				bean.set적립금(rs.getInt("적립금"));
				
				vlist.addElement(bean);
			}
			
			pool.freeConnection(conn);
		} catch(Exception e) {
			System.out.println("오류 : " + e.getMessage());
		}
		
		return vlist;
	}
}
