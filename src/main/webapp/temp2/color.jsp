<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url("common.css");
</style>
</head>
<body>
	<form action="color_result.jsp">
		<table><caption>배경색</caption>
		<tr><th>배경색</th><td>
			<select name="color" multiple="multiple" size="7">
				<option value="red">빨강</option>
				<option value="orange">주황</option>
				<option value="yellow">노랑</option>
				<option value="green">초록</option>
				<option value="blue">파랑</option>
				<option value="navy">남색</option>
				<option value="violet">보라</option>
			</select></td></tr>
			<tr><th colspan="2">
				<input type="submit" value="확인"></th></tr>
		</table>
	</form>
</body>
</html>