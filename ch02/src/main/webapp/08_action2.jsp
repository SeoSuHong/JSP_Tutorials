<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = "ȫ�浿";
%>
<h1>�׼��±� include</h1>
<jsp:include page="08_action3.jsp"></jsp:include><p/><hr>
include Action�� Body�Դϴ�.<p/>
<%=name %>
</body>
</html>