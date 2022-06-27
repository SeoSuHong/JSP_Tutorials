<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.BoardBean" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	int totalRecord = 0;    // 전체 레코드 수 : 68개
	int numPerPage = 10;    // 페이지당 보여줄 레코드 수
	int pagePerBlock = 5;   // 블럭당 페이지 수 : [1][2][3][4][5]
			
	int totalPage = 0;      // 전체 페이지 수 : [1][2][3][4][5][6][7]
	int totalBlock = 0;     // 전체 블럭 수 : 2
	
	int nowPage = 1;        // 현재 레코드가 해당하는 페이지
	int nowBlock = 1;       // 현재 레코드가 해당하는 블럭
	
	int start = 0;          // DB테이블의 select 시작번호()
	int listSize = 0;       // 읽어온 게시물의 수
	
	String keyWord = "", keyField = "";  // 검색
	Vector<BoardBean> vlist = null;
	
	if(request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	
	if(request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage * numPerPage) - numPerPage;
		/*
		2 * 10 -10 = 10
		[1] -> 1 ~ 10
		[2] -> 11 ~ 20
		[3] -> 21 ~ 30
		*/
	
	totalRecord = bMgr.getTotalCount(keyField, keyWord);            // 전체 레코드 수
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);   // 전체 페이지 수
	nowBlock = (int)Math.ceil((double)nowPage / pagePerBlock);      // 현재 블럭 계산
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);  // 전체 블럭 계산
%>
<body>
	<h2 align="center">JSPBoard</h2><p/>
	<table align="center" width="700">
		<tr>
			<td colspan="5">Total : <%=totalRecord %>Articles (<font color="red"><%=nowPage %>/<%=totalPage %>Pages</font>)</td>
		</tr>
		<tr bgcolor="#d0d0d0" align="center">
			<th width="10%">번호</th>
			<th width="40%">제목</th>
			<th width="15%">이름</th>
			<th width="20%">날짜</th>
			<th width="15%">조회수</th>
		</tr>
		<!-- DB의 list -->
<%
		vlist = bMgr.getBoardList(keyField, keyWord, start, numPerPage);
%>
		<tr>
		</tr>
		<tr>
		</tr>
		<tr>
			<!-- 페이징 시작 -->
			<td colspan="3">
			</td>
			<!-- 페이징 끝 -->
			<td colspan="2" align="right">
				<a href="post.jsp">[글쓰기]</a>&nbsp;
				<a href="javascript:list()">[처음으로]</a>
			</td>
		</tr>
	</table>
	<hr width="700">
	<form action="list.jsp" method="get" name="searchFrm">
		<table align="center" width="800">
			<tr>
				<td align="center">
					<select name="keyField">
						<option value="name">이름</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
					</select>
					<input name=keyWord>
					<input type="button" value="찾기" onClick="">
					<input type="hidden" name="nowPage" value="1">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>