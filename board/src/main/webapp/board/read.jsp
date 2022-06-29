<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	bMgr.upCount(num);
	BoardBean bean = bMgr.getBoard(num);
	String name = bean.getName();
	String subject = bean.getSubject();
	String regdate = bean.getRegdate();
	String content = bean.getContent();
	String ip = bean.getIp();
	int count = bean.getCount();
	String filename = bean.getFilename();
	int filesize = bean.getFilesize();
	session.setAttribute("bean", bean);
%>
<script type="text/javascript">
	function down(filename) {
		document.downFrm.filename.value = filename;
		document.downFrm.submit();
	}
	
	function list() {
		document.listFrm.submit();
	}
</script>
<style>
	a {text-decoration: none; color: black;}
</style>
<body>
	<table width="1000" align="center" style="margin-top:100px">
		<tr>
			<td colspan="4" align="center" height="30" bgcolor="lightcoral">글읽기</td>
		</tr>
		<tr>
			<td width="15%" bgcolor="lightblue" align="center">이름</td>
			<td width="35%"><%=name %></td>
			<td width="15%" bgcolor="lightblue" align="center">등록날짜</td>
			<td width="35%"><%=regdate %></td>
		</tr>
		<tr>
			<td bgcolor="lightblue" align="center">제목</td>
			<td colspan="3"><%=subject %></td>
		</tr>
		<tr>
			<td bgcolor="lightblue" align="center">첨부파일</td>
			<td colspan="3">
			<%
				if(filename != null && !filename.equals("")) {
			%>
					<a href="javascript:down('<%=filename %>')"><%=filename %></a>&emsp;
					<font color="blue">(<%=filesize %> KBytes)</font>
			<%
				} else {
					out.print("등록된 파일이 없습니다.");
				}
			%>
			</td>
		</tr>
		<tr>
			<td colspan="4" height="400"><pre><%=content %></pre></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><%=ip %>로 부터 글을 남기셨습니다. / 조회수 <%=count %><hr></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				[ <a href="javascript:list()">리스트</a> |
				 <a href="update.jsp?nowPage=<%=nowPage %>&num=<%=num %>">수정</a> |
				 <a href="reply.jsp?nowPage=<%=nowPage %>">답변</a> |
				 <a href="delete.jsp?nowPage=<%=nowPage %>&num=<%=num %>">삭제</a> ]
			</td>
	</table>
	<form name="downFrm" method="post" action="download.jsp">
		<input type="hidden" name="filename">
	</form>
	<form action="list.jsp" methoe="post" name="listFrm">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
	<%
		if(!(keyWord == null || keyWord.equals(""))) {
	%>
			<input type="hidden" name="keyField" value="<%=keyField %>">
			<input type="hidden" name="keyWord" value="<%=keyWord %>">
	<%
		}
	%>
	</form>
</body>
</html>