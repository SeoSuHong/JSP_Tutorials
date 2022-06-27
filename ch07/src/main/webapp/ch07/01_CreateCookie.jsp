<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("myCookie", "cookieValue");
	cookie.setMaxAge(60);
	cookie.setValue("currValue");
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Cookie를 사용하여 연결 유지</h2>
쿠키를 생성하였습니다.<p/>
쿠키의 내용은 <a href="01_testCookie.jsp">여기 클릭</a>
</body>
</html>