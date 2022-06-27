<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Directive include</h1>
<p><%@include file="07_directiveTop.jsp" %></p>
<hr>
include 지시자의 Body 부분입니다.
<hr>
<p><%@include file="07_directiveBottom.jsp" %></p>
</body>
</html>