<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
include 지시자의 Bottom 부분입니다.
<%
	Date date = new Date();
%>
<%=date.toLocaleString() %>
</body>
</html>