<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 지시어(directive) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% // scriptlet 스크립틀릿 / 수행부 자바코드 시작, 여기서의 comment는 자바와 같음
	/* comment 시작
	   comment 끝 => 소스보기로 아예 자바코드 부분은 안보임*/
	int sum=0;
	for (int i=1; i<=100; i++) {
		sum +=i;
	}
// 자바코드 끝%>
	<h2>1부터 100까지 합계</h2>
	<%=sum %> <%-- 표현식 expression language <%=변수나 값 %> --%>
<%-- jsp 전용 comment => 소스 보기로 볼 수 없음--%>
<!-- 이것도 comment, html comment => 소스 보기로 볼 수 있음-->
</body>
</html>