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
	String name = "서수홍";
	String classroom = "과정평가형";
	int classNo = 7;
	
	int sum = 0;
	for(int i = 1; i <= 10; i++){
		sum += i;
	}
%>
1~10까지 합계 : <%=sum %><br>
과정명 : <%=classroom %><br>
강의실 : <%=classNo %>호실<br>
이름 : <%=name %>
</body>
</html>