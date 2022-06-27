<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="scriptFile.js"></script>
<body>
	<h4>파일을 업로드 하려면 행 추가 버튼을 누르세요.</h4>
	<input type="button" value="행 추가" onclick="javascript:addInputBox();"> &emsp;
	<input type="button" value="행 삭제" onclick="javascript:substractInputBox();">
	<form method="post" encType="multipart/form-data" name="gForm" action="02_MultiViewPage.jsp">
		<input type="hidden" name="count">
		<table border="1" id="dynamic_table">
		</table><p/>
		<input type="submit" value="Upload">
	</form>
</body>
</html>