<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="test" class="ch05.BeanTest1"/>
<jsp:setProperty property="name" name="test" value="자바빈 사용 : 홍길동"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <jsp:getProperty property="name" name="test"/>
</body>
</html>