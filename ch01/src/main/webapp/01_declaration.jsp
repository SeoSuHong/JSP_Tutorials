<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	// �������, ��������, ����
	String name = "ȫ�浿";
	int num = 2;
%>
<%
	// ��������
	String name2 = name + " Fighting!";
%>
<%!
	String fight = "Fighting!";
%>

���� �̸��� <%=name %>�Դϴ�.<br>
�г��� <%=num %>�г� �Դϴ�.<br>

<%=name2 %>
</body>
</html>