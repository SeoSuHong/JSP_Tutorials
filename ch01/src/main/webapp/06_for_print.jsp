<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>for ���</h1>
<h3>1 ~ 100�� �� : </h3>
<%
	int sum = 0;
	for(int i = 1; i <= 100; i++) {
		sum += i;
	}
%>
<%=sum %><br><br>

<!-- -------------------------------- -->

<h3>1 ~ 10 �հ�</h3>
<%
	sum = 0;
	for(int i = 1; i <= 10; i++) {
%>
	<%=i + (i!=10 ? " + ":" = ") %>
<%
	sum += i;
	}
%>
	<%=sum %>

<!-- -------------------------------- -->

<h3>1 ~ 10 �հ�</h3>
<%
	sum = 0;
	for(int i = 1; i <= 10; i++) {
		out.print(i + " + ");
		sum += i;
	}
%>
<%=sum %>
</body>
</html>