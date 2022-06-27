<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- errorPage -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Error Page</h1>
<p>다음과 같은 예외가 발생하였습니다.</p>
예외타입 : <%=exception.getClass().getName() %><br>
예외메시지 : <%=exception.getMessage() %>
<p>0으로 나눌 수 없습니다.</p>
</body>
</html>