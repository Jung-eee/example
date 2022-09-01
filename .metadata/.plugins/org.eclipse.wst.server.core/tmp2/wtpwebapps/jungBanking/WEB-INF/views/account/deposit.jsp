<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입금하기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value='/resources/css/customize.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/default.css'/>" />
</head>
<body>
<header class="p-3 text-white">
		<jsp:include page="../incl/header.jsp"/>
	</header>
	<div class="container add_ac">
  <div class="success">
    <img src="<c:url value='/resources/bank-account.png'/>" alt="account-img" />
    <p>입금하기</p>
   <form action="deposit" method="post">
   		<label for=accNum>계좌선택</label>
		<select id="accNum" name="accountNum" required>
			<option value="">계좌 번호를 선택하세요</option>
			<c:forEach var="text" items="${accountList}">
				<option>${text.accountNum}</option>
			</c:forEach>
		</select><br>
		<label class="tr_acc">입금 금액</label><input id="deposite_m" type="text" name="depositMoney"/><br>
	<button type="submit" class="add_acb tr_acb">입금하기</button>
</form>
  </div>
  </div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>