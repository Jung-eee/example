<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
<h1>회원가입</h1>
<form:form  modelAttribute="add_user">
<label>아이디</label> <form:input path="userId"/>
<label>비밀번호</label>  <form:input path="passwd"/>
<label>이름</label> <form:input path="userName"/>
<input type="submit" value="가입하기">
</form:form>
</body>
</html>