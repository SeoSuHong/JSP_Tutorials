<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- error�� ������ �̵� -->
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int one = 1;
	int zero = 0;
%>
</body>
<h2>���� ���� error������ ����</h2>
<p>��Ģ����</p>
<p>one + zero = <%=one + zero %></p>
<p>one - zero = <%=one - zero %></p>
<p>one * zero = <%=one * zero %></p>
<p>one / zero = <%=one / zero %></p>
</html>