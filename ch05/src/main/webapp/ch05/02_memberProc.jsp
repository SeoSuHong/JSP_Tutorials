<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="regBean" class="ch05.MemberBean"/>
<jsp:setProperty name="regBean" property="*"/>
<!DOCTYPE html>
<html>
<style>
	table, tr, td {border: 1px solid black; border-collapse: collapse;}
	input {display: inline-block; justify-content: space-around;}
	table tr:nth-last-child(1) td {
		text-align: center;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="02_result.jsp" method="post">
		<table>
			<tr>
				<th colspan="3"><jsp:getProperty name="regBean" property="name"/>님이 작성한 내용</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><jsp:getProperty name="regBean" property="id"/></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><jsp:getProperty name="regBean" property="pw"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><jsp:getProperty name="regBean" property="name"/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><jsp:getProperty name="regBean" property="birth"/></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><jsp:getProperty name="regBean" property="email"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="확인완료">
					<input type="button" value="다시쓰기" onClick="history.back()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>