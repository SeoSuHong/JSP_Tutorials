<!-- page ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page info="import tutorial"%>
<%@ page buffer="16kb"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>page ������ : import</h2>
<%
	Date date = new Date();
%>
<p>���� ��¥�� �ð���?</p>
<%=date.toLocaleString() %>
</body>
</html>