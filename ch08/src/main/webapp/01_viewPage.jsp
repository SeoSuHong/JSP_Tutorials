<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String saveFolder = "D:/SH/jspWorkspace/ch08/src/main/webapp/filestorage";
	String encType = "UTF-8";
	int maxSize = 5*1024*1024;
	try {
		MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		// 폼 요소 중 <input type="file"> 인 요소를 제외한 나머지 파라미터들의 이름 얻어오기
		Enumeration params = multi.getParameterNames();
		
		while (params.hasMoreElements()) {
			String name = (String)params.nextElement();
			String value = multi.getParameter(name);
			out.print(name + " : " + value + "<p/>");
		}
		
		// 폼 요소 중 <input type="file"> 인 요소
		Enumeration files = multi.getFileNames();
		while (files.hasMoreElements()) {
			String name = (String)files.nextElement();
			String fileName = (String)multi.getFilesystemName(name);
			String originalName = (String)multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File f = multi.getFile(name);
			out.print("파라미터 이름 : " + name + "<p/>");
			out.print("저장된 파일 이름 : " + fileName + "<p/>");
			out.print("파일 실제 이름 : " + originalName + "<p/>");
			out.print("파일 타입 : " + type + "<p/>");
			if (f != null) {
				out.print("파일의 크기 : " + f.length() + "Btye");
			}
		}
	} catch (Exception e) {
		System.out.println("Error : " + e.getMessage());
	}
%>
<body>

</body>
</html>