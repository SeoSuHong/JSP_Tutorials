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
<h1>Session 유지</h1>
<%=id %>님이 좋아하는 계절은 <%=season %>, 좋아하는 과일은 <%=fruit %> 입니다.<p/>
세션 ID : <%=sessionId %><p/>
세션 유지시간 : <%=intervalTime %>초<p/>
<%
		session.invalidate();
	} else {
		out.print("세션의 시간이 경과하였거나 다른 이유로 세션이 종료되었습니다.");
	}
%>
</body>
</html>