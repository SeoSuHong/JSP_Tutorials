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
�Ǽ� 4.5�� �ݿø��� ����? : <%=num %><br>
���� ��¥�� �ð���? : <%=date.toString() %><br>
<%=op(3, 5) %><br>
����? ����? : <%=hour<12 ? "����":"����" %>
</body>
</html>