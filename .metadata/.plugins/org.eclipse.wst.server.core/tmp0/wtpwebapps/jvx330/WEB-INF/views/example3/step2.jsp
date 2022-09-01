<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/default.css'/>">
</head>
<body>
	<h3>회원가입</h3>
	<h4>회원정보 입력</h4>
	<form action="step3" method="post">
		<label>E-mail</label><input type="text" name="email"/><br>
		<label>비밀번호</label><input type="password" name="psswd"/>
		<input type="submit" value="회원가입"/>
	</form>
</body>
</html>