<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.BoardBean" %>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a {text-decoration: none; color: black;}
</style>
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
	
	String keyWord = "", keyField = "";  // keyWord : 검색 내용, keyField : 찾을 내용(제목, 이름, 내용)
	Vector<BoardBean> vlist = null;
	
	if(request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	
	if(request.getParameter("reload") != null && request.getParameter("reload").equals("true")) {
		keyWord = "";
		keyField = "";
	}
	
	if(request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage * numPerPage) - numPerPage;
		/*
		2 * 10 - 10 = 10
		[1] -> 1 ~ 10
		[2] -> 11 ~ 20
		[3] -> 21 ~ 30
		*/
	
	totalRecord = bMgr.getTotalCount(keyField, keyWord);            // 전체 레코드 수
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);   // 전체 페이지 수
	nowBlock = (int)Math.ceil((double)nowPage / pagePerBlock);      // 현재 블럭 계산
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);  // 전체 블럭 계산
%>
<script type="text/javascript">
	function check() {
		if(document.searchFrm.keyWord.value =="") {
			alert("검색어를 입력하세요.");
			document.searchFrm.keyWord.focus(); return;
		}
		document.serachFrm.submit();
	}
	
	function read(num) {
		document.readFrm.num.value = num;
		document.readFrm.action = "read.jsp";
		document.readFrm.submit();
	}
	
	function list() {
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	
	function block(value) {
		document.readFrm.nowPage.value = <%=pagePerBlock %> * (value - 1) + 1;
		document.readFrm.submit();
	}
	
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
</script>
</head>
<body>
	<h2 align="center">JSPBoard</h2><p/>
	<table align="center" width="800">
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
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		vlist = bMgr.getBoardList(keyField, keyWord, start, numPerPage);
		listSize = vlist.size();
		
		if(vlist.isEmpty()) {
			out.print("<tr><td colspan='5'>등록된 게시물이 없습니다.</td></tr>");
		} else {
			for(int i = 0; i < numPerPage; i++) {
				if(i == listSize) break;
				BoardBean bean = vlist.get(i);
				int num = bean.getNum();
				String subject = bean.getSubject();
				String name = bean.getName();
				String regdate = bean.getRegdate();
				int count = bean.getCount();
				int depth = bean.getDepth();
%>
		<tr>
			<td align="center"><%=totalRecord - ((nowPage -1)*numPerPage) - i %></td>
			<td>
			<%
				if(depth > 0) {
					for(int j = 0; j < depth; j++) {
						out.print("&emsp;");
					}
				}
			%>
				<a href="javascript:read('<%=num %>')"><%=subject %></a>
			</td>
			<td align="center"><%=name %></td>
			<td><%=regdate %></td>
			<td align="center"><%=count %></td>
		</tr>
<%
			}
		}
%>
		<tr>
			
			<td colspan="5"><br/><br/></td>
		</tr>
		<tr>
			<!-- 페이징 시작 -->
			<td colspan="3" align="center">
			<%
				int pageStart = (nowBlock - 1) * pagePerBlock + 1;
				int pageEnd = (pageStart + pagePerBlock <= totalPage) ? (pageStart + pagePerBlock) : totalPage + 1;
				if(totalPage != 0) {
					if(nowBlock > 1) {
			%>
						<a href="javascript:block('<%=nowBlock - 1 %>')">Prev...</a>
			<%
					}
					out.print("&nbsp;");
					for( ;pageStart < pageEnd; pageStart++) {
			%>
						<a href="javascript:pageing('<%=pageStart %>')">[<%=pageStart %>]</a>
			<%
					}
					out.print("&nbsp;");
					if(totalBlock > nowBlock) {
			%>
						<a href="javascript:block('<%=nowBlock + 1 %>')">..Next</a>
			<%
					}
				}
			%>
			</td>	
			<!-- 페이징 끝 -->
			<td colspan="2" align="right">
				<a href="post.jsp">[글쓰기]</a>&nbsp;
				<a href="javascript:list()">[처음으로]</a>
			</td>
		</tr>
	</table>
	<hr width="800">
	<form action="list.jsp" method="get" name="searchFrm">
		<table align="center" width="800">
			<tr>
				<td align="center">
					<select name="keyField">
						<option value="subject">제목</option>
						<option value="name">이름</option>
						<option value="content">내용</option>
					</select>
					<input name=keyWord>
					<input type="button" value="찾기" onClick="javascript:check()">
					<input type="hidden" name="nowPage" value="1">
				</td>
			</tr>
		</table>
	</form>
	<form method="post" name="listFrm">
		<input type="hidden" name="reload" value="true">
		<input type="hidden" name="nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		<input type="hidden" name="keyField" value="<%=keyField %>">
		<input type="hidden" name="keyWord" value="<%=keyWord %>">
	</form>
</body>
</html>