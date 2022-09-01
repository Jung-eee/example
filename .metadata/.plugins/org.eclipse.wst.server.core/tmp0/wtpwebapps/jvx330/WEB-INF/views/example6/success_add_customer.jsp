<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/default.css'/>">
</head>
<body>
	<h3>회원가입</h3>
	<label>이메일</label> : ${customer.email}<br>
	<label>비밀번호</label> : ${customer.passwd}<br>
	<label>이름</label> : ${customer.name}<br>
	<label>주민번호</label> : ${customer.ssn}<br>
	<label>연락처</label> : ${customer.phone}
</body>
</html>