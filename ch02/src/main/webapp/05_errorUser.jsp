<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- error시 페이지 이동 -->
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
<h2>내가 만든 error페이지 실행</h2>
<p>사칙연산</p>
<p>one + zero = <%=one + zero %></p>
<p>one - zero = <%=one - zero %></p>
<p>one * zero = <%=one * zero %></p>
<p>one / zero = <%=one / zero %></p>
</html>