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
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.password2.value) {
			alert("암호와 암호확인이 다릅니다");
			frm.password.focus();
			frm.password.value="";
			frm.password2.value="";
			return false;
		}
		if (!frm.gender.value) {
			alert("성별을 체크하시오");
			return false;
		}
	}
</script>
</head>
<body>
	<form action="member_result.jsp" method="post" name="frm" onsubmit="return chk()">
		<table border="1"><caption>회원 가입</caption>
			<tr><th  width="200">이름</th><td>
				<input type="text" name="name" autofocus="autofocus" required="required"></td></tr>
			<tr><th>아이디</th><td>
				<input type="text" name="id" required="required"></td></tr>
			<tr><th>암호</th><td>
				<input type="password" name="password" required="required"></td></tr>
			<tr><th>암호확인</th><td>
				<input type="password" name="password2" required="required"></td></tr>
			<tr><th>성별</th><td>
				<label for="g1">남자</label>
				<input type="radio" name="gender" id="g1" value="남자"><br>
				<label for="g2">여자</label>
				<input type="radio" name="gender" id="g2" value="여자"><br></td></tr>
			<tr><th>메일 수신여부(복수선택)</th><td>
				<label for="e1">공지</label>
				<input type="checkbox" name="email" id="e1" value="공지"><br>
				<label for="e2">광고</label>
				<input type="checkbox" name="email" id="e2" value="광고"><br>
				<label for="e3">배송</label>
				<input type="checkbox" name="email" id="e3" value="배송"><br></td></tr>
			<tr><th>취미(복수선택)</th><td>
				<select name="hobby" multiple="multiple" size="6">
					<option>골프<option>애교<option>치대기<option>칭얼대기<option>대성공<option>대실패
				</select></td></tr>
			<tr><th colspan="2">
				<input type="submit" value="가입 신청">
				<input type="reset" value="입력 취소"></th></tr>
		</table>	
	</form>
</body>
</html>