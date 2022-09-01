<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value='/resources/css/customize.css' />">
</head>
<body style="background: mistyrose;">
	<header class="p-3 text-white">
		<jsp:include page="../incl/header.jsp"/>
	</header>
	<div class="container login">
	   <form action="login" method="post" style="margin-top: 150px;">
	   <div class="col-sm-5" style="margin: 0 auto;">
       <h1 class="h3 mb-3 fw-normal">로그인</h1>   
       <div class="form-floating">
         <label for="floatingInput">아이디</label>
         <input type="text" class="form-control" id="floatingInput" placeholder="Id" name="userId" required="required">
       <div class="form-floating" style="margin-top: 15px;">
         <label for="floatingPassword">비밀번호</label>
         <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="passwd" required="required">
       </div>
       </div>
	   
	   </div>
       <div class="col-sm-3" style="margin: 0 auto;">
       <button class="w-100 btn btn-lg btn-primary b1" type="submit" style="background-color : salmon; border : none; margin-top: 35px;">로그인</button>       
       <button class="w-100 btn btn-lg btn-primary b1" type="button" style="background-color : salmon; border : none;" onclick='location.href="<c:url value='add_customer'/>"'>회원가입</button>
       </div>
     </form>		
   </div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>