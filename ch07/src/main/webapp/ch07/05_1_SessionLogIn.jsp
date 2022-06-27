<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="05_LogInFn.js"></script>
<%
	String id = "";
	Enumeration en = session.getAttributeNames();

	while (en.hasMoreElements()) {
		if (en.nextElement().equals("idKey")) {
			id = (String)session.getAttribute("idKey");
		}
	}
	if (!id.equals("")) {
%>
<script type="text/javascript">
	alert("LogIn 성공");
	location.href = "05_3_LogIn.jsp";
</script>
<%
	}
%>
<body>
	<h2 align="center">Session LogIn Page</h2>
	<form action="05_2_LogInResult.jsp" method="post" name="login">
		<table border="1" align="center">
			<tr>
				<th colspan="2">LogIn</th>
			</tr>
			<tr>
				<td width="100" align="center">ID</td>
				<td width="200"><input name="id" size="24"></td>
			</tr>
			<tr>
				<td align="center">PW</td>
				<td><input type="password" name="pw" size="24"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" value="login" onclick="login_btn()">
				<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>