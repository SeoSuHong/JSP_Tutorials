<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String sex = request.getParameter("sex");
	String dep = request.getParameter("department");
%>
</head>
<body>
	�� �̸��� <b><%=name %></b>�̰� ������ <%=sex %>�Դϴ�.<br>
	<b><%=dep %></b>�а��̸�, �й��� <b><%=id %></b>�Դϴ�.
</body>
</html>