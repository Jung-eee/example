<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 완료</title>
</head>
<body>
	<h3>회원가입이 완료 되었습니다. ${userName}님 환영합니다.</h3><br>
	<button onclick='location.href="<c:url value='login/login'/>"' >로그인하기</button>
</body>
</html>