<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	session.setAttribute("idKey", id);
	session.setMaxInactiveInterval(60);
%>
</head>
<body>
<form action="11_2_quiz.jsp" method="post">
	�����ϰ� ���� �� ����<p/>
	���ֵ� <input type="checkbox" name="travel" value="���ֵ�"> &ensp;
	�Ͽ��� <input type="checkbox" name="travel" value="�Ͽ���"> &ensp;
	����ī�� <input type="checkbox" name="travel" value="����ī��"> &ensp;
	�� <input type="checkbox" name="travel" value="��"> &ensp;
	�Ϻ� <input type="checkbox" name="travel" value="�Ϻ�"> <p/>
	<input type="submit" value="������"> &ensp; <input type="reset" value="�ʱ�ȭ">
</form>
</body>
</html>