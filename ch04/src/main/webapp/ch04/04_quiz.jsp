<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
%>
		<h1>Success LogIn</h1><hr>
		<h3>정보를 입력해 주세요.</h3>
		<form action="Quiz" method="get">
		Name : <input name="name"><p/>
		Phone Number : <input name="phoneNumber">
		<input type="submit" value="보내기">
		</form>
<%
	}else {
%>
		<h1>LogIn</h1><hr>
		<form action="Quiz" method="post">
		ID : <input name="id"><p/>
		Password : <input type="password" name="password">
		<input type="submit" value="로그인">
		</form>
<%
	}
%>
</body>
</html>