<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� �Ϸ�</title>
</head>
<body>
	<h3>�α��� �Ϸ� �Ǿ����ϴ�. ${user.userName}�� ȯ���մϴ�.</h3><br>
	<button onclick='location.href="<c:url value='login'/>"' >�α׾ƿ�</button>
</body>
</html>