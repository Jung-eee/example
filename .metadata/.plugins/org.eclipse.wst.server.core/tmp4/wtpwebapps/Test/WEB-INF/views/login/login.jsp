<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
<h1>�α���</h1>
<form action="login" method="post">
<label>���̵�</label> <input type="text" name="userId" required="required"/>
<label>��й�ȣ</label> <input type="password" name="passwd" required="required">
<button type="submit">�α��� �ϱ�</button>
</form>
</body>
</html>