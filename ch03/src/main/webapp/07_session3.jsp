<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit");
	String id = (String)session.getAttribute("idKey");
	String sessionId = session.getId();
	int intervalTime = session.getMaxInactiveInterval();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(id != null) {
%>
<h1>Session ����</h1>
<%=id %>���� �����ϴ� ������ <%=season %>, �����ϴ� ������ <%=fruit %> �Դϴ�.<p/>
���� ID : <%=sessionId %><p/>
���� �����ð� : <%=intervalTime %>��<p/>
<%
		session.invalidate();
	} else {
		out.print("������ �ð��� ����Ͽ��ų� �ٸ� ������ ������ ����Ǿ����ϴ�.");
	}
%>
</body>
</html>