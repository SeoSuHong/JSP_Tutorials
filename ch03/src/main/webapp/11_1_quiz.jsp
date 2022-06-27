<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	session.setAttribute("idKey", id);
	session.setMaxInactiveInterval(60);
%>
</head>
<body>
<form action="11_2_quiz.jsp" method="post">
	여행하고 싶은 곳 선택<p/>
	제주도 <input type="checkbox" name="travel" value="제주도"> &ensp;
	하와이 <input type="checkbox" name="travel" value="하와이"> &ensp;
	보라카이 <input type="checkbox" name="travel" value="보라카이"> &ensp;
	괌 <input type="checkbox" name="travel" value="괌"> &ensp;
	일본 <input type="checkbox" name="travel" value="일본"> <p/>
	<input type="submit" value="보내기"> &ensp; <input type="reset" value="초기화">
</form>
</body>
</html>