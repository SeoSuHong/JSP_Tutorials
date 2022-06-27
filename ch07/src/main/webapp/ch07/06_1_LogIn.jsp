<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="06_LogInFn.js"></script>
<body>
	<h2 align="center">LogIn Page</h2>
	<form action="06_2_CheckAccount.jsp" method="post" name="logForm">
		<table border="1" align="center">
			<tr>
				<th colspan="2">LogIn</th>
			</tr>
			<tr>
				<td>ID</td>
				<td><input name="id"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input name="name"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="login" onclick="checkLog()">
					<input type="reset" value="reset">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>