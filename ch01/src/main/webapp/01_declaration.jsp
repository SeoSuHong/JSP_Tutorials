<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	// 멤버변수, 전역변수, 선언문
	String name = "홍길동";
	int num = 2;
%>
<%
	// 지역변수
	String name2 = name + " Fighting!";
%>
<%!
	String fight = "Fighting!";
%>

나의 이름은 <%=name %>입니다.<br>
학년은 <%=num %>학년 입니다.<br>

<%=name2 %>
</body>
</html>