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
	String[] hobby = request.getParameterValues("hobby");
	
	out.print("�� ��̴� ");
	for(int i = 0; i < hobby.length; i++) {
		if(i+1 == hobby.length){
			out.print(hobby[i]);
		}
		else {
			out.print(hobby[i] + " ,");
		}
	}
	out.print(" �Դϴ�.");
%>
</body>
</html>