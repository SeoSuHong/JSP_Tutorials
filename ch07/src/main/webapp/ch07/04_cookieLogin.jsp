<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="04_loginFn.js" charset="UTF-8"></script>
<%
	String id = "";
	String cookieName = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("idKey")) {
				cookieName = cookies[i].getName();
				id = cookies[i].getValue();
			}
		}
		if (!id.equals("")) {
%>
<script type="text/javascript">
	alert("로그인 성공");
	location.href = "04_login.jsp";
</script>
<%
		}
	}
%>
</head>
<body>
	<h2 align="center">Cookie LogIn Page</h2>
	<form action="04_loginResult.jsp" method="post" name="log">
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