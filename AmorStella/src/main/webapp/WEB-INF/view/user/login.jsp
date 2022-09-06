<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../common.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginPage</title>
</head>
<body>
	<form action="/loginProc" method="post">
		<h1>loginPage</h1>
		<p><span>아이디</span><input type='text' name="userId" id="userId"/></p>
		<p><span>비밀번호</span><input type='text' name="pw" id="pw"/></p>
		<p><button type="submit">제출</button></p>
	</form>
</body>
</html>