<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌신청</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/default.css'/>">
</head>
<body>
	<h3>계좌신청</h3>
	<form:form method="post" modelAttribute="account">
		<label>계좌타입</label>
		<form:radiobuttons path="accType"
						   itemValue="type" 
						   itemLabel="acct" 
						   items="${accTypeProvider}"/><br>
		<input type="submit" value="가입하기">
	</form:form>
</body>
</html>