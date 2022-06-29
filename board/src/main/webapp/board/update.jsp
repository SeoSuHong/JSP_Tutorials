<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<table align="center" width="800" style="margin-top:150px">
			<tr>
				<td colspan="2" height="15" align="center">수정하기</td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td width="80%" height="300"><input width="100%" height="100%" name="content"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"> 수정시에는 비밀번호가 필요합니다.</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="수정완료">
					<input type="reset" value="다시수정">
					<input type="button" value="뒤로" onClick="back()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>