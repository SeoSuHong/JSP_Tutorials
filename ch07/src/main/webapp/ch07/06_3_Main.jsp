<%@page import="ch07.ClientController, ch07.OrderController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="selectInfo" class="ch07.CheckAccount"/>
<%
	int count = 0;
	String id = (String)session.getAttribute("idKey");
	ArrayList<ClientController> clients = selectInfo.selectInfo(id);
	ArrayList<OrderController> orders = selectInfo.selectOrder(id);
%>
	<h2 align="center">Client Information</h2>
	<table border="1" align="center">
		<tr>
			<th colspan="6" align="center">Client</th>
		</tr>
		<tr>
			<th>고객ID</th>
			<th>고객이름</th>
			<th>나이</th>
			<th>등급</th>
			<th>직업</th>
			<th>적립금</th>
		</tr>
<%
	for (int i = 0; i < clients.size(); i++) {
%>
		<tr>
			<td><%=clients.get(i).getId() %></td>
			<td><%=clients.get(i).getName() %></td>
			<td><%=clients.get(i).getAge() %></td>
			<td><%=clients.get(i).getRating() %></td>
			<td><%=clients.get(i).getJob() %></td>
			<td><%=clients.get(i).getReserve() %></td>
		</tr>
<%
	}
%>
	</table><br><hr><br>
	<table border="1" align="center">
		<tr>
			<th colspan="6" align="center">Order</th>
		</tr>
		<tr>
			<th></th>
			<th>주문번호</th>
			<th>주문제품</th>
			<th>수량</th>
			<th>배송지</th>
			<th>주문일자</th>
		</tr>
<%
	for (int i = 0; i < orders.size(); i++) {
%>
		<tr>
			<td width="20" align="center"><%=count+1%></td>
			<td><%=orders.get(i).getNo() %></td>
			<td><%=orders.get(i).getProduct() %></td>
			<td><%=orders.get(i).getCount() %></td>
			<td><%=orders.get(i).getAddress() %></td>
			<td><%=orders.get(i).getDate() %></td>
		</tr>
<%
	count++;
	}
%>
	</table>
	<h3>Total Records : <%=count %></h3>
	
<body>

</body>
</html>