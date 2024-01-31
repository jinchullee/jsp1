<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
난 중간 연산자
<% // java와 html 코드가 섞여 있는 경우에는 java가 먼저 실행되는 경우가 많다
	out.flush(); // 이걸 써야 출력순서가 바뀌지 않는다
	int num1= Integer.parseInt(request.getParameter("num1"));
	int num2= Integer.parseInt(request.getParameter("num2"));
	request.setAttribute("plus", num1+num2);
	request.setAttribute("minus", num1-num2);
	request.setAttribute("multiply", num1*num2);
	request.setAttribute("divide", num1/num2);
	RequestDispatcher rd= request.getRequestDispatcher("num_cal_result.jsp");
	// request에 데이터를 담아서 num_cal_result.jsp에 전달
	/* rd.forward(request, response); */
	
	/* include는 num_cal_result에 작성된 결과를 response에 담아서 여기서 보여줌 */
	rd.include(request, response);
%>
난 바닥글
</body>
</html>