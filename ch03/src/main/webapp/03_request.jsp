<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Request ���� ���</h1>
<% 
	String protocol = request.getProtocol();
%>
�������� : <%=protocol %><p/>

<%="�������� : " + request.getProtocol() + "<p/>"%>
<%="������ �̸� : " + request.getServerName()  + "<p/>"%>
<%="������ ��Ʈ��ȣ : " + request.getServerPort() + "<p/>"%>
<%="������� ��ǻ�� �ּ� : " + request.getRemoteAddr() + "<p/>"%>
<%="������� ��ǻ�� �̸� : " + request.getRemoteHost() + "<p/>"%>
<%="method �� : " + request.getMethod() + "<p/>"%>
<%="��û ���(URL) : " + request.getRequestURL() + "<p/>"%>
<%="��û ���(URI) : " + request.getRequestURI() + "<p/>"%>
<%="���� ������� ������ : " + request.getHeader("User-Agent")  + "<p/>"%>
<%="�������� ����ϴ� ������ type : " + request.getHeader("Accept") + "<p/>"%> 
</body>
</html>