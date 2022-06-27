<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String id = "";
	Enumeration en = session.getAttributeNames();
	while (en.hasMoreElements()) {
		if (en.nextElement().equals("idKey")) {
			id = (String)session.getAttribute("idKey");
		}
	}
%>
</head>
<body>
	<h2>My Session Page</h2>
	<h2><%=id %>님이 로그인 하셨습니다.</h2>
	<h2><a href="05_4_LogOut.jsp">로그아웃</a></h2>
</body>
</html>