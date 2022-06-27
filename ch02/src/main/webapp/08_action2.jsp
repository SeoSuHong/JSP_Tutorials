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
	String name = "홍길동";
%>
<h1>액션태그 include</h1>
<jsp:include page="08_action3.jsp"></jsp:include><p/><hr>
include Action의 Body입니다.<p/>
<%=name %>
</body>
</html>