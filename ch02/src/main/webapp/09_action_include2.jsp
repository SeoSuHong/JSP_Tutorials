<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String siteName = request.getParameter("siteName");
	String siteTel = request.getParameter("siteTel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Action include Ex3</h1>
<jsp:include page="09_action_include3.jsp">
	<jsp:param value="jsp ������" name="siteName"/>
	<jsp:param value="000-111-1111" name="siteTel"/>
</jsp:include>
<hr>
include Action�� Body�Դϴ�.<p/>
<%=siteName %><p/>
<%=siteTel %>
</body>
</html>