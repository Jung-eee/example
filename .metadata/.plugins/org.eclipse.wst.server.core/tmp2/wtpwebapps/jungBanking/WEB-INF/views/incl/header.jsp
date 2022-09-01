<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value='/resources/css/customize.css' />">
    <div class="container no-padding" style="position: relative;">
      <div>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 mb-md-0">
          <li><a class="nav-link px-2 text-white" href="<c:url value='/main'/>"><img alt="logo" src="<c:url value='/resources/icon.png'/>" style="width: 50px; height: 50px;"></a></li>
          <li><a class="nav-link px-2 text-white si" href="<c:url value='/account/add_account'/>">계좌신청</a></li>
          <li><a class="nav-link px-2 text-white si" href="<c:url value='/account/deposit'/>">입금하기</a></li>
          <li><a class="nav-link px-2 text-white si" href="<c:url value='/account/transfer'/>">이체하기</a></li>
          <li><a class="nav-link px-2 text-white si" href="<c:url value='/account/view_my_accounts'/>">내계좌보기</a></li>
        </ul>
        <div class="text-end" style=" position: absolute; right: 25px; top: 2px;">
        <%if(session.getAttribute("userId") == null) {%>
          <button type="button"  class="btn btn-outline-light me-2" onclick='location.href="<c:url value='/login_add/login'/>"'>로그인</button>
          <button type="button"  class="btn btn-outline-light me-2" onclick='location.href="<c:url value='/login_add/add_customer'/>"'>회원가입</button>
         <%} else { %>
          <button type="button"  class="btn btn-outline-light me-2" onclick='location.href="<c:url value='/login_add/logout'/>"'>로그아웃</button>
          <button type="button"  class="btn btn-outline-light me-2" style="border:none;">${name}님</button>
          <%} %>
        </div>
      </div>
    </div>