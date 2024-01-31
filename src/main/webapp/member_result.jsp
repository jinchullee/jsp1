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
	String name= request.getParameter("name");
	String id= request.getParameter("id");
	String password= request.getParameter("password");
	String gender= request.getParameter("gender");
	String[] email= request.getParameterValues("email");
	String[] hobby= request.getParameterValues("hobby");
%>
<h2>회원가입 결과</h2>
	이름 : <%=name%><p>
	아이디 : <%=id%><p>
	암호 : <%=password %><p>
	성별 : <%=gender %><p>
	
	메일 수신여부 : <%
	if(email==null) {
		out.println("이메일을 안받으시겠다??<p>");
	}
	else{
		for (int i=0; i<email.length; i++) {
			if(i==email.length-1) {
				out.println(email[i]);		
			}
			else
				out.println(email[i]+", ");
		}
	}
	%><p>
	
	취미 : <%
	if(hobby==null) {
		out.println("취미가 없으시겠다??<p>");
	}
	else{
		for (int i=0; i<hobby.length; i++) {
			if(i==hobby.length-1) {
				out.println(hobby[i]);		
			}
			else
				out.println(hobby[i]+", ");
		}
	}
	%>

</body>
</html>