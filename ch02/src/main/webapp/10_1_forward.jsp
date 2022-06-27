<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Forward Tag Ex1</h1>
	Forward Tag의 포워딩 되기 전 페이지 입니다.<p/>
	<jsp:forward page="10_2_forward.jsp"></jsp:forward>
</body>
</html>