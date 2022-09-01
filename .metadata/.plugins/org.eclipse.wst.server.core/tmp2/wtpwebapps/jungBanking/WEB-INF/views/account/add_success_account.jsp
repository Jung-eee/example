<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계좌신청 완료</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value='/resources/css/customize.css' />">
</head>
<body class="sus">
<header class="p-3 text-white">
		<jsp:include page="../incl/header.jsp"/>
	</header>
<div class="container add_ac">
  <div class="success">
    <img src="<c:url value='/resources/bank-account.png'/>" alt="account-img" />
    <p>${name}님 계좌신청이 완료되었습니다.<br>계좌 번호는 ${accType}입니다.</p>
    <div class="ac_btn">
    <button class="add_acb add_sub"  type="button" onclick='location.href="<c:url value='/account/view_my_accounts'/>"'>내 계좌보기</button>
	<button class="add_acb add_sub" type="button" onclick='location.href="<c:url value='/main'/>"'>메인으로</button>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>