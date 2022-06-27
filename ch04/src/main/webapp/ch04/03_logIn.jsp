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
		out.print(id + "님 반갑습니다.<p/>");
		out.print("<a href='03_logOut.jsp'>로그아웃</a>");
	} else {
%>
	<form action="LogInServlet" method="post">
	ID : <input name="id"><p/>
	Password : <input type="password" name="password"><p/>
	<input type="submit" value="LogIn">
	</form>
<%
	}
%>
</body>
</html>