<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:declaration>
	public int max(int x, int y){
		return x>y ? x:y;
	}
</jsp:declaration>

<%-- <%!
	public int max(int x, int y){
		return x>y ? x:y;
	}
%> --%>
<%-- ---------------------------------- --%>
<jsp:scriptlet>
	int i = 10;
	int j = 20;
	if(i > 100) {
		out.print("100���� ū ��");
	}
</jsp:scriptlet>

<%-- <%
	int i = 10;
	int j = 20;
	if(i > 100) {
		out.print("100���� ū ��");
	}
%> --%>
<%-- ---------------------------------- --%>
i = <jsp:expression>i</jsp:expression>��
j = <jsp:expression>j</jsp:expression> �� ū ����?<p/>
<jsp:expression>max(i, j)</jsp:expression>
</body>
</html>