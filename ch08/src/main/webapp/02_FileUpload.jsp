<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post" name="formName1">
		<table>
			<tr>
				<td>User</td>
				<td><input name="user"></td>
				<td>Title</td>
				<td><input name="title"></td>
			</tr>
			<tr>
				<td colspan="4">추가할 파일 수 입력
					<input name="addCnt">
					<input type="button" value="확인" onclick="addFile(this.form)">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>