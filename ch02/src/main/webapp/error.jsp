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
<p>������ ���� ���ܰ� �߻��Ͽ����ϴ�.</p>
����Ÿ�� : <%=exception.getClass().getName() %><br>
���ܸ޽��� : <%=exception.getMessage() %>
<p>0���� ���� �� �����ϴ�.</p>
</body>
</html>