<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌신청</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/default.css'/>">
</head>
<body>
	<h3>계좌신청</h3>
	<form action="add_account" method="post">
		<label>아이디</label><input type="text" name="customerId"/><br>
		<label>계좌타입</label><input type="text" name="acctype"/><br>
		<input type="submit" value="계좌신청"/>
	</form>
</body>
</html>