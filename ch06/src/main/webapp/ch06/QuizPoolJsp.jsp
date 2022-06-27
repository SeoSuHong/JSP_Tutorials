<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, ch06.*" %>
<jsp:useBean id="regMgr" class="ch06.QuizController"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Quiz</h2>
<table border="1">
	<tr>
		<th>제품번호</th>
		<th>제품명</th>
		<th>재고량</th>
		<th>단가</th>
		<th>제조업체</th>
	</tr>
<%
	int total_cnt = 0;
	ArrayList<QuizBeen> list = regMgr.pool_getProductList();
	for(int i = 0; i < list.size(); i++) {
		QuizBeen been = list.get(i);
		System.out.println(been.getNo());
%>
	<tr>
		<td><%=been.getNo() %></td>
		<td><%=been.getName() %></td>
		<td><%=been.getCount() %></td>
		<td><%=been.getPrice() %></td>
		<td><%=been.getCompany() %></td>
	</tr>
<%
	total_cnt++;
	}
%>
<h4>Total records : <%=total_cnt %></h4>
</table>
</body>
</html>