<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
</head>
<style>
	body {width: 800px; margin: 100px auto;}
	div {background-color: aqua; height: 30px; margin-bottom: 40px; display: flex; justify-content: center; line-height: 32px}
	form {margin: 0 30px;}
    .subject {width: 400px;}
	.content {width: 400px; height: 300px;}
</style>
<body>
<div>글 쓰 기</div>
<!-- submit 시 BoardPost로 연결되어있는(BoardPostServlet.java) servlet으로 이동 -->
<form action="BoardPost" enctype="multipart/form-data" method="post" name="postForm">
	성명 &ensp; <input name="name"><p/>
	제목 &ensp; <input class="subject" name="subject"><p/>
	내용 &ensp; <input  class="content" name="content"><p/>
	비밀번호 &ensp; <input type="password" name="pass"><p/>
	파일찾기 &ensp; <input type="file" name="filename"><p/><hr>
	<input type="submit" value="등록"> <input type="reset" value="다시쓰기"> <input type="button" value="리스트" onClick="location.href='list.jsp'">
	<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>"> <!-- 사용자의 ip를 얻어옴 -->
</form>
</body>
</html>