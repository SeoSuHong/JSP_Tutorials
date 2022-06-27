<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("idKey")) {
				id = cookies[i].getValue();	
			}
		}
		if (id.equals("")) {
%>
<script type="text/javascript">
		alert("아이디 혹은 비밀번호가 틀렸습니다.");
		location.href="04_cookieLogin.jsp";
</script>
<%
		}
	}
%>
<body>
	<h2>Cookie LogIn Page</h2>
	<h2><%=id %>님이 로그인 하였습니다.</h2>
	<h2><a href="04_logout.jsp">로그아웃</a></h2>
	
</body>
</html>