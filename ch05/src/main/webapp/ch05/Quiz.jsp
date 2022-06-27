<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="quiz" class="ch05.QuizBean"/>
<jsp:setProperty property="*" name="quiz"/>
</head>
<body>
	<form action="Quiz_result.jsp" method="post">
		<table>
			<tr>
				<th><jsp:getProperty property="name" name="quiz"/>님의 정보입니다.</th>
			</tr>
			<tr>
				<td>이름</td>
				<td><jsp:getProperty property="name" name="quiz"/>
			</tr>
			<tr>
				<td>주소</td>
				<td><jsp:getProperty property="address" name="quiz"/>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><jsp:getProperty property="tel" name="quiz"/>
			</tr>
			<tr>
				<td>이메일</td>
				<td><jsp:getProperty property="email" name="quiz"/>
			</tr>
			<tr>
				<td>취미</td>
				<td><jsp:getProperty property="hobby" name="quiz"/>
			</tr>
			<tr>
				<td>
					<input type="submit" value="확인">
					<input type="button" value="다시작성" onclick="history.back()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>