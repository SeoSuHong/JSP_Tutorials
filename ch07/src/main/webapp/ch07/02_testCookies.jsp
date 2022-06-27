<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% Cookie[] cookies = request.getCookies(); %>
<%!
	private String getCookieValue(Cookie[] cookie, String name) {
		if (cookie != null) {
			for (int i = 0; i < cookie.length; i++) {
				if (cookie[i].getName().equals(name)) {
					return cookie[i].getValue();
				}
			}
		}
		return null;
	}
%>
</head>
<body>
	이름 : <%=getCookieValue(cookies, "NAME") %><br>
	나이 : <%=getCookieValue(cookies, "AGE") %><br>
	성별 : <%=getCookieValue(cookies, "GENDER") %><br>
</body>
</html>