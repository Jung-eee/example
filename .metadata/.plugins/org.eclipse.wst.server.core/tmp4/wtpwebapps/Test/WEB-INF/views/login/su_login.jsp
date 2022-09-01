<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 완료</title>
</head>
<body>
	<h3>로그인 완료 되었습니다. ${user.userName}님 환영합니다.</h3><br>
	<button onclick='location.href="<c:url value='login'/>"' >로그아웃</button>
</body>
</html>