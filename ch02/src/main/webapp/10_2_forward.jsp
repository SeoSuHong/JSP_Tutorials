<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Forward Tag Ex1</h1>
����� ���̵�� : <b><%=id %></b>�Դϴ�.<br>
����� ��й�ȣ�� : <b><%=pw %></b>�Դϴ�.
</body>
</html>