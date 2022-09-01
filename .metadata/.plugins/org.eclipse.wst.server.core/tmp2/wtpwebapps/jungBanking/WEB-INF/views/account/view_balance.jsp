<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌 조회</title>
</head>
<body>
	<h3>잔고를 확인 할 계좌를 선택하세요</h3>
	<form action="view_balance" method="post">
		<label for=accNum>계좌선택</label>
		<select id="accNum" name="accountNum" required>
			<option value="">선택하세요</option>
			<c:forEach var="text" items="${accountList}">
				<option>${text.accountNum}</option>
			</c:forEach>
		</select>
		<button type="submit">잔고 확인</button>
	</form>
</body>
</html>