<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이체 확인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value='/resources/css/customize.css' />">
</head>
<body>
<header class="p-3 text-white">
		<jsp:include page="../incl/header.jsp"/>
	</header>
<div class="container add_ac">
  <div class="success">
    <img src="<c:url value='/resources/bank-account.png'/>" alt="account-img" />
    <p>이체확인</p>
   <form action="transfer_success" method="post">
   		<label>보내는 계좌 : ${withdrawAccountNum}</label><br>
		<label>받는 계좌 : ${depositAccountNum}</label><br>
		<label>받는 사람 : ${receiveName}</label><br>
		<label>보낼 금액 : ${money}원</label><br>
		<label>맞으시면 비밀번호를 눌러주세요 </label><br>
		<label class="tr_acc">비밀번호를 입력하세요</label><input type="password" name="passwd" required="required">
	<button type="submit" class="add_acb tr_acb">이체하기</button>
</form>
  </div>
  </div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                 