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
num1�� num2�� �� : <%=plus(3, 5) %><br>
num1�� num2�� �� : <%=plus(3) %><br>

<%!
	String msg;
	Double dbl;
%>
������ ������ �ʱⰪ��? : <%=msg %><br>
������ �⺻ �ʱⰪ��? : <%=num1 %><br>
�Ǽ��� �⺻ �ʱⰪ��? : <%=dbl %>
</body>
</html>