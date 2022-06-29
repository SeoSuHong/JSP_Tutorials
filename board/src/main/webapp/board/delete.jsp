<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:useBean id="bMgr" class="board.BoardMgr"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String nowPage = request.getParameter("nowPage");
	int num = Integer.parseInt(request.getParameter("num"));
	
	if(request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardBean bean = (BoardBean)session.getAttribute("bean");
		String dbPass = bean.getPass();
		if(inPass.equals(dbPass)) {
			bMgr.deleteBoard(num);
			String url = "list.jsp?nowPage=" + nowPage;
			response.sendRedirect(url);
		} else{
%>
		<script>
			alert("비밀번호가 맞지 않습니다.");
			history.back();
		</script>
<%
		}
	} else {
%>
	<script type="text/javascript">
		function check() {
			if(document.delFrm.pass.value == "") {
				alert("비밀번호를 입력해 주세요.");
				document.delFrm.pass.focus();
				return false;
			}
			document.delFrm.submit();
		}
	</script>
</head>
<body>
	<form method="post" name="delFrm" action="delete.jsp">
		<table align="center" width="600">
			<tr>
				<td align="center" height="25" bgcolor="#BDBDBD">사용자의 비밀번호를 입력해 주세요.</td>
			</tr>
			<tr>
				<td align="center" height="25"><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td><hr/></td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" value="삭제완료" onClick="check()">
					<input type="reset" value="다시쓰기">
					<input type="button" value="뒤로" onClick="history.go(-1)">
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="<%=num %>">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
	</form>
<%
	}
%>
</body>
</html>