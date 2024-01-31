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
	String realPath= application.getRealPath("/"); // 실제 경로
	String stdPath= application.getContextPath(); // 표준 경로 - 프로젝트명
	application.log("대박 사건");  // 로그 출력 - 콘솔로 출력
%>
실제 경로: <%=realPath %><p>
표준 경로: <%=stdPath %><p>
</body>
</html>