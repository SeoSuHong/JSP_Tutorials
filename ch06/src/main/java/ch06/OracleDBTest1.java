package ch06;

import java.sql.*;

public class OracleDBTest1 {
	public static void main(String[] args) {
		Connection conn;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "test", "1234");
			System.out.println("Success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
