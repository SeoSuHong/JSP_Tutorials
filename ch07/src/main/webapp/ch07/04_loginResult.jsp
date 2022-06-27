<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="regMgr" class="ch07.RegisterMgrVector"/>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (regMgr.loginRegister(id, pw)) {
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);
%>
<script type="text/javascript">
	alert("로그인이 되었습니다.");
	location.href = "04_login.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("아이디 혹은 비밀번호가 틀렸습니다.");
	location.href = "04_cookieLogin.jsp";
</script>
<%
	}
%>
<body>

</body>
</html>