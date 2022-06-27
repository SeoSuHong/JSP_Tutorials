package ch06;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class QuizController {
	DBConnectionMgr pool;
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	public QuizController() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public ArrayList<QuizBeen> pool_getProductList() {
		ArrayList<QuizBeen> list = new ArrayList<QuizBeen>();
		String query = "SELECT * FROM 제품";
		
		try {
			conn = pool.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				QuizBeen been = new QuizBeen();
				
				been.setNo(rs.getString("제품번호"));
				been.setName(rs.getString("제품명"));
				been.setCount(rs.getInt("재고량"));
				been.setPrice(rs.getInt("단가"));
				been.setCompany(rs.getString("제조업체"));
				
				list.add(been);
			}
			
			pool.freeConnection(conn);
		} catch(Exception e) {
			System.out.println("DB Error : " + e.getMessage());
		}
		
		return list;
	}
}
