<%@page import="ch07.RegisterMgrVector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="beanController" class="ch07.RegisterMgrVector"/>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (beanController.loginRegister(id, pw)) {
		session.setAttribute("idKey", id);
		session.setAttribute("pwKey", pw);
%>
<script type="text/javascript">
		alert ("Welcome My Page");
		location.href = "05_3_LogIn.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("Invalid Your ID or Password");
	location.href = "05_1_SessionLogIn.html";
</script>
<%
	}
%>
<body>

</body>
</html>