<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%!
	String msg;
%>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name1");
	String color = request.getParameter("color");
	
	/*
	switch(color){
	case "blue":
		msg = "�Ķ���"; break;
	case "red":
		msg = "������"; break;
	case "green":
		msg = "�ʷϻ�"; break;
	default:
		color = "white";
		msg = "��Ÿ";
	}
	*/
	
	if(color.equals("blue")) {
		msg = "�Ķ���";
	} else if(color.equals("red")) {
		msg = "������";
	} else if(color.equals("green")) {
		msg = "�ʷϻ�";
	} else {
		color = "lightcoral";
		msg = "��Ÿ";
	}
%>
</head>
<body bgcolor="<%=color %>">
<b><%=name %></b>���� �����ϴ� ������ <b><%=msg %></b>�Դϴ�.
</body>
</html>