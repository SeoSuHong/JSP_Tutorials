<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Error Page</h1>
<p>error type : <%=exception.getClass().getName() %></p>
<p>error message : <%=exception.getMessage() %></p>
<p>�迭�� ������ ������ϴ�.</p>
</body>
</html>