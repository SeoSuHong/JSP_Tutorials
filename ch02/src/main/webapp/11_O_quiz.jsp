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
	String blood = request.getParameter("blood");
%>
</head>
<body>
�̸� : <%=name %><br>
������ : <%=blood %>
</body>
</html>