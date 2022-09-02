<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>INDEX 파일입니다.</p>
	
	<form action = "/registUser" method="post">
		<table>
			<tr>
				<td>아이디</td><td><input type="text" name = "userId" id="userId"></td>
			</tr>
			<tr>
				<td>비밀번호</td><td><input type="password" name = "pw" id="pw"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="grade" value="1">
					<input type="hidden" name="upoint" value = "0">
					<input type="hidden" name="cert" value= "none">
					<input type="hidden" name="role" value="friend">
					<button type="submit">등록</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>