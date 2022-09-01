<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.tab{margin-left:20px;}
</style>
</head>
<body>
<form action="course_contents.do" method="get">
<div>
	<c:forEach var="text" items="${textLines}">
		${text}
		<br>
	</c:forEach>
</div>
<button type="submit">눌러!</button>
</form>
</body>
</html>