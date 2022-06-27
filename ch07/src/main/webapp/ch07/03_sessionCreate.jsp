<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	session.setAttribute("idKey", "ezen");
	session.setAttribute("pwKey", "1234");
%>
</head>
<body>
	<h3>세션 생성 완료</h3>
	<h3>세션 정보는 <a href="03_testSession.jsp">여기를 클릭</a></h3>
</body>
</html>