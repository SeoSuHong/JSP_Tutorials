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
	float f = 4.5f;
	int num = Math.round(f);
	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
%>
<%!
	public int op(int i, int j){
		return i>j ? i:j;
}
%>
실수 4.5를 반올림한 값은? : <%=num %><br>
현재 날짜와 시간은? : <%=date.toString() %><br>
<%=op(3, 5) %><br>
오전? 오후? : <%=hour<12 ? "오전":"오후" %>
</body>
</html>