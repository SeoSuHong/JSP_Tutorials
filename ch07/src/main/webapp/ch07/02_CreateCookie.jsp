<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	/*
	Cookie cookie = new Cookie("myCookie", "hello");
	response.addCookie(cookie);
	*/
	
	response.addCookie(new Cookie("NAME", "EZEN"));
	response.addCookie(new Cookie("AGE", "26"));
	response.addCookie(new Cookie("GENDER", "MALE"));
%>
</head>
<body>
	<h3>쿠키 생성</h3>
	<h3>쿠키의 내용 <a href="02_testCookies.jsp">여기를 클릭</a></h3>
</body>
</html>