<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String blood = request.getParameter("blood");
%>
</head>
<body>

<jsp:forward page='<%="11_" + blood + "_quiz.jsp"%>'>
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="<%=blood %>" name="blood"/>
</jsp:forward>

<%-- switch문으로 비교
<%
	switch(blood) {
	case "A":
%>

<jsp:forward page="11_A_quiz.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="A" name="blood"/>
</jsp:forward>

<%
		break;
	case "B":
%>
<jsp:forward page="11_B_quiz.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="B" name="blood"/>
</jsp:forward>
<%
		break;
	case "AB":
%>
<jsp:forward page="11_AB_quiz.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="AB" name="blood"/>
</jsp:forward>
<%
		break;
	case "O":
%>
<jsp:forward page="11_O_quiz.jsp">
	<jsp:param value="<%=name %>" name="name"/>
	<jsp:param value="O" name="blood"/>
</jsp:forward>
<%
		break;
	}
%>
 --%>
</body>
</html>