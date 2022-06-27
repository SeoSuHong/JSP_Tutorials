package ch06;

import java.sql.*;

public class OracleDBTest2 {
	public static void main(String[] args) {
		Connection conn;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "test", "1234");
			System.out.println("Success");
			
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM tab");
			if(st.execute("SELECT * FROM tab")) {
				rs = st.getResultSet();
			}
			while(rs.next()) {
				String str = rs.getString(1);
				System.out.println(str);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
