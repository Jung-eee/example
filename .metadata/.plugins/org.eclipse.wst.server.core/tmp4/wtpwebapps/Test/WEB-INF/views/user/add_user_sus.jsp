<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ �Ϸ�</title>
</head>
<body>
	<h3>ȸ�������� �Ϸ� �Ǿ����ϴ�. ${userName}�� ȯ���մϴ�.</h3><br>
	<button onclick='location.href="<c:url value='login/login'/>"' >�α����ϱ�</button>
</body>
</html>