<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
<h1>로그인</h1>
<form action="login" method="post">
<label>아이디</label> <input type="text" name="userId" required="required"/>
<label>비밀번호</label> <input type="password" name="passwd" required="required">
<button type="submit">로그인 하기</button>
</form>
</body>
</html>