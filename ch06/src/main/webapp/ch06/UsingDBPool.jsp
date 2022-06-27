<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, ch06.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>DBConnection 이용한 Oracle 연동</h2>
<%
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String id, name, grade, job;
	int age, reserve, count = 0;
	
	try {
		conn = pool.getConnection();
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM 고객");
%>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>이름</th>
			<th>나이</th>
			<th>등급</th>
			<th>직업</th>
			<th>적립금</th>
		</tr>
<%
	if(rs != null) {
		while (rs.next()){
			id = rs.getString("고객id");
			name = rs.getString("고객이름");
			age = rs.getInt("나이");
			grade = rs.getString("등급");
			job = rs.getString("직업");
			reserve = rs.getInt("적립금");
%>
		<tr>
			<td><%=id %>
			<td><%=name %>
			<td><%=age %>
			<td><%=grade %>
			<td><%=job %>
			<td><%=reserve %>
		</tr>
<%
		count++;
		}
	}
%>
	</table>
	Total records : <%=count %>
<%
	} catch(Exception e) {
		System.out.println("오류 : " + e.getMessage());
	} finally {
		if(conn != null) try{pool.freeConnection(conn);} catch(Exception e) {System.out.println("close 오류 : " + e.getMessage());}
	}
%>
</body>
</html>