<%@page import="ch07.CheckAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="checkAccount" class="ch07.CheckAccount"/>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	if (checkAccount.loginRegister(id, name)) {
		session.setAttribute("idKey", id);
%>
<script type="text/javascript">
		alert("Welcome Account Page");
		location.href = "06_3_Main.jsp"
</script>
<%
	} else {
%>
<script type="text/javascript">
		alert("Invalid your ID or Name");
		location.href = "06_1_LogIn.jsp";
</script>
<%
		}
%>
<body>

</body>
</html>