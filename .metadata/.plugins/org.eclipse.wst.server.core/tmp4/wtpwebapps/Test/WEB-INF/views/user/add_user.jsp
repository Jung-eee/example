<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
<h1>ȸ������</h1>
<form:form  modelAttribute="add_user">
<label>���̵�</label> <form:input path="userId"/>
<label>��й�ȣ</label>  <form:input path="passwd"/>
<label>�̸�</label> <form:input path="userName"/>
<input type="submit" value="�����ϱ�">
</form:form>
</body>
</html>