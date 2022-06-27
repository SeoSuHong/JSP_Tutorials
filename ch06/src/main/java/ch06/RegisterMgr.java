package ch06;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class RegisterMgr {
	private final static String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final static String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final static String USER = "test";
	private final static String PASSWORD = "1234";
	
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	public RegisterMgr() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<RegisterBean> getRegisterList() {
		String query = "SELECT * FROM 고객";
		ArrayList<RegisterBean> list = new ArrayList<RegisterBean>();
		
		try {
			conn = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
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
				
				list.add(bean);
			}
			
			rs.close();
			stmt.close();
			conn.close();
		} catch(SQLException e) {
			System.out.println("getRegisterList 오류 : " + e.getMessage());
		}
		
		return list;
	}
}