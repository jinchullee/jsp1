<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String title=request.getParameter("title");
	String writer=request.getParameter("writer");
	String content=request.getParameter("content");
	Date date= new Date();
	long time= date.getTime();  // 연월일시분초를 가진 숫자, 중복되지 않는 숫자
	String fileName= time+".txt";
	String real= application.getRealPath("/WEB-INF/"+fileName);
	FileWriter fw= new FileWriter(real); // 출력할 파일 작성
	String str="제목 : "+title+"\r\n작성자 : "+writer+"\r\n내용 : "+content;
	fw.write(str);
	out.println("작성완료");
	fw.close();
	
%>
</body>
</html>