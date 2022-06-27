package ch07;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CheckAccount {

	DBConnectionMgr pool;
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	
	public CheckAccount() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public Boolean loginRegister(String id, String name) {
		Boolean chkLogin = false;
		String query = "SELECT count(*) FROM 고객 WHERE 고객id=? AND 고객이름=?";
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();
			if (rs.next() && rs.getInt(1) > 0) chkLogin = true;
			
			pool.freeConnection(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("loginRegister Error : " + e.getMessage());
		}
		
		return chkLogin;
	}
	
	public ArrayList<ClientController> selectInfo(String id) {
		ArrayList<ClientController> list = new ArrayList<ClientController>();
		String query = "SELECT * FROM 고객 WHERE 고객id = '" + id + "'";
		
		try {
			conn = pool.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				ClientController client = new ClientController();
				client.setId(rs.getString("고객id"));
				client.setName(rs.getString("고객이름"));
				client.setAge(rs.getInt("나이"));
				client.setRating(rs.getString("등급"));
				client.setJob(rs.getString("직업"));
				client.setReserve(rs.getInt("적립금"));
				
				list.add(client);
			}
			
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) { 
			System.out.println("selectInfo Error : " + e.getMessage());
		}
		
		return list;
	}
	
	public ArrayList<OrderController> selectOrder(String id) {
		ArrayList<OrderController> list = new ArrayList<OrderController>();
		String query = "SELECT * FROM 주문 LEFT JOIN 고객 ON 주문.주문고객 = 고객.고객id WHERE 주문고객 = '" + id + "'";
		
		try {
			conn = pool.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				OrderController order = new OrderController();
				order.setNo(rs.getString("주문번호"));
				order.setClient(rs.getString("주문고객"));
				order.setProduct(rs.getString("주문제품"));
				order.setCount(rs.getInt("수량"));
				order.setAddress(rs.getString("배송지"));
				order.setDate(rs.getString("주문일자"));
				
				list.add(order);
			}
			
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) { 
			System.out.println("selectInfo Error : " + e.getMessage());
		}
		
		return list;
	}
	
}
