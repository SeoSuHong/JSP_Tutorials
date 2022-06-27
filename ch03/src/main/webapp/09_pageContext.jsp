<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	out.print("out.print() 메소드를 이용한 출력");
	pageContext.getOut().print("pageContext.getOut().print()를 이용한 메소드 출력");
%>
</body>
</html>