<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<%!
	static final String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	static final String DB_NAME = "test";
	static final String PASSWORD = "1234";
	
	Connection conn;
	Statement stmt;
	ResultSet rs;
%>
<body>
<table border="1">
	<tr>
		<th>고객ID</th>
		<th>고객이름</th>
		<th>나이</th>
		<th>등급</th>
		<th>직업</th>
		<th>적립금</th>
	</tr>
<%
	int age = 0, reserve = 0;
	String id = "", name = "", rating = "", job = "";

	try {
		String query = "SELECT * FROM 고객";
		
		conn = DriverManager.getConnection(DB_URL, DB_NAME, PASSWORD);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		while (rs.next()) {
			id = rs.getString("고객id");
			name = rs.getString("고객이름");
			age = rs.getInt("나이");
			rating = rs.getString("등급");
			job = rs.getString("직업");
			reserve = rs.getInt("적립금");
%>
	<tr>
		<td><%=id %></td>
		<td><%=name %></td>
		<td><%=age %></td>
		<td><%=rating %></td>
		<td><%=job %></td>
		<td><%=reserve %></td>
	</tr>

<%
		}
		
		rs.close();
		stmt.close();
		conn.close();
	} catch(SQLException e) {
		System.out.println("DB 오류 : " + e.getMessage());
	}
%>
</table>
</body>
</html>