<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
<%
	request.setCharacterEncoding("EUC-KR");

	String input = request.getParameter("input");
	String cycle = request.getParameter("cycle");
	
	int count = Integer.parseInt(cycle);
	int i = 1;
	
	while(i <= count) {
%>

<b><%=input %></b><br>

<%
		i++;
	}
%>
 --%>

<%
	request.setCharacterEncoding("EUC-KR");

	String input = request.getParameter("input");
	String cycle = request.getParameter("cycle");
	
	int count = Integer.parseInt(cycle);
	int i = 1;
	
	while(i <= count) {
		out.print(input + "<br>");
		i++;
	}
%>

</body>
</html>