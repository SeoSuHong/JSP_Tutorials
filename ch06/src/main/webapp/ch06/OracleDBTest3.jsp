<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String no = "", client = "", product = "", address = "", date = ""; 
	int count = 0, cnt = 0;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "test", "1234");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM 주문");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JSP를 이용한 Oracle DB 연동</h2>
<table border="1">
	<tr>
		<th>주문번호</th>
		<th>주문고객</th>
		<th>주문제품</th>
		<th>수량</th>
		<th>배송지</th>
		<th>주문일자</th>
	</tr>
<%
	if(rs != null) {
		while(rs.next()) {
			no = rs.getString("주문번호");
			client = rs.getString("주문고객");
			product = rs.getString("주문제품");
			count = rs.getInt("수량");
			address = rs.getString("배송지");
			date = rs.getString("주문일자");
					
	
%>
	<tr>
		<td><%=no %></td>
		<td><%=client %></td>
		<td><%=product %></td>
		<td><%=count %></td>
		<td><%=address %></td>
		<td><%=date %></td>
	</tr>
<%
		cnt++;
		}
	}
%>
</table>
total records : <%=cnt %>
<%
	} catch(Exception e) {
		System.out.println(e.getMessage());
	} finally {
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}

%>
</body>
</html>