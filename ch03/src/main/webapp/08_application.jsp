<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String serverInfo = application.getServerInfo();
	String mimeType = application.getMimeType("07_session1.html");
	String appPath = application.getContextPath();
	String realPath = application.getRealPath("/");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Application Ex1</h1>
���� �����̳��� �̸��� ���� : <%=serverInfo %><p/>
07_session1.html ������ MIME Type : <%=mimeType %><p/>
�� ���ø����̼��� URL��� : <%=appPath %><p/>
���� ���� �ý����� ��θ� : <%=realPath %>
</body>
</html>