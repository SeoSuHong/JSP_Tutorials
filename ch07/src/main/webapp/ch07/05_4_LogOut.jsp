<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	Enumeration en = session.getAttributeNames();
	while (en.hasMoreElements()) {
		if (en.nextElement().equals("idKey")) {
			session.invalidate();
		}
	}
%>
<script type="text/javascript">
	alert("로그아웃 되었습니다.");
	location.href = "05_1_SessionLogIn.jsp";
</script>
<body>

</body>
</html>