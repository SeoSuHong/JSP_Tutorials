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
		out.print(id + "���� ������� ��������?<p/>");
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
		alert("�ϳ� �̻��� �������� ������ �ּ���.");
	</script>
	
	<jsp:include page="11_1_quiz.jsp">
		<jsp:param value="<%=id %>" name="id"/>
	</jsp:include>

<%
	}
 %>
</body>
</html>