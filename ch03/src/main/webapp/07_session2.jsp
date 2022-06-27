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
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	
	session.setAttribute("idKey", id);
	session.setMaxInactiveInterval(60*5);
%>
<h1>Session Ex1</h1>
<form action="07_session3.jsp" method="post">
1. 가장 좋아하는 계절은?<p/>
<input type="radio" name="season" value="봄">봄 &emsp;
<input type="radio" name="season" value="여름">여름 &emsp;
<input type="radio" name="season" value="가을">가을 &emsp;
<input type="radio" name="season" value="겨울">겨울 <p/>

2. 가장 좋아하는 과일은?<p/>
<input type="radio" name="fruit" value="사과">봄 &emsp;
<input type="radio" name="fruit" value="수박">수박 &emsp;
<input type="radio" name="fruit" value="메론">메론 &emsp;
<input type="radio" name="fruit" value="참외">참외 <p/>
<input type="submit" value="전송">&emsp;
<input type="reset" value="초기화">&emsp;
</form>
</body>
</html>