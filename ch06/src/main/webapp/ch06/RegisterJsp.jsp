<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, ch06.*" %>
<jsp:useBean id="regMgr" class="ch06.RegisterMgr"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Bean 이용하여 OracleDB 연동</h2>
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
	ArrayList<RegisterBean> vlist = regMgr.getRegisterList();
	for (int i = 0; i < vlist.size(); i++){
		RegisterBean regBean = vlist.get(i);
%>
	<tr>
		<td><%=regBean.get고객id() %></td>
		<td><%=regBean.get고객이름() %></td>
		<td><%=regBean.get나이() %></td>
		<td><%=regBean.get등급() %></td>
		<td><%=regBean.get직업() %></td>
		<td><%=regBean.get적립금() %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>