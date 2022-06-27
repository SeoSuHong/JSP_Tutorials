<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	int num1; int num2 = 10;
	
	public int plus(int num1){
		return num1 + num2;
	}
	public int plus(int num1, int num2){
		return num1 + num2;
	}

%>
num1과 num2의 합 : <%=plus(3, 5) %><br>
num1과 num2의 합 : <%=plus(3) %><br>

<%!
	String msg;
	Double dbl;
%>
참조형 변수의 초기값은? : <%=msg %><br>
정수의 기본 초기값은? : <%=num1 %><br>
실수의 기본 초기값은? : <%=dbl %>
</body>
</html>