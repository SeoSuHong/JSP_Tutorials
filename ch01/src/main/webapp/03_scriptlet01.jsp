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
	String name = "����ȫ";
	String classroom = "��������";
	int classNo = 7;
	
	int sum = 0;
	for(int i = 1; i <= 10; i++){
		sum += i;
	}
%>
1~10���� �հ� : <%=sum %><br>
������ : <%=classroom %><br>
���ǽ� : <%=classNo %>ȣ��<br>
�̸� : <%=name %>
</body>
</html>