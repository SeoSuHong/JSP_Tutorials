<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer="16kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int totalSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int useSize = totalSize - remainSize;
%>
���� �� ���ۻ����� : <%=totalSize %>byte<p/>
���� ���� ��뷮 : <%=useSize %>byte<p/>
���� ���� ������ : <%=remainSize %>byte<p/>
</body>
</html>