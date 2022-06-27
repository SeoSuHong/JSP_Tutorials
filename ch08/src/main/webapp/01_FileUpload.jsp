<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="01_viewPage.jsp" method="post" enctype="multipart/form-data">
		user : <input name="user"><p/>
		title : <input name="title"><p/>
		file : <input type="file" name="uploadFile"><p/>
		<input type="submit" value="Upload">
	</form>
</body>
</html>