<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>초기 파아미터 이름</th>
		<th>초기 파라미터 값</th>
	</tr>
<%
	Enumeration e = config.getInitParameterNames();
	while(e.hasMoreElements()) {
		String initParamName = (String)e.nextElement();
%>
	<tr>
		<td><%=initParamName %></td>
		<td><%=config.getInitParameter(initParamName) %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>