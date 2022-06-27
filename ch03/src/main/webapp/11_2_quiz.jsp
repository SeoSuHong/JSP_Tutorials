<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String[] travel = request.getParameterValues("travel");
	String id = (String)session.getAttribute("idKey");
%>
</head>
<body>
<%
	if(travel != null){
		out.print(id + "님이 가고싶은 여행지는?<p/>");
		for(int i = 0; i < travel.length; i++) {
			if(i+1 < travel.length) {
				out.print(travel[i] + ", ");
			} else {
				out.print(travel[i]);
			}
		}
	} else {
%>
	<script type="text/javascript">
		alert("하나 이상의 여행지를 선택해 주세요.");
	</script>
	
	<jsp:include page="11_1_quiz.jsp">
		<jsp:param value="<%=id %>" name="id"/>
	</jsp:include>

<%
	}
 %>
</body>
</html>