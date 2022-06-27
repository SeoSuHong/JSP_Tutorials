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
	제 이름은 <b><%=name %></b>이고 성별은 <%=sex %>입니다.<br>
	<b><%=dep %></b>학과이며, 학번은 <b><%=id %></b>입니다.
</body>
</html>