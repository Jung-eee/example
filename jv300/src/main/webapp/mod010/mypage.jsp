<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>My page</h3>
	<a href='<c:url value="/mod010/logout"/>'>로그아웃</a>
	<a href='<c:url value="/mod010/update"/>'>업데이트</a>
	<label>Last Access Time : </label> ${lastAccessTime} 
</body>
</html>