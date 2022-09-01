<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="add_user.do" method="post">
		<div id="header">
     		<h1>Sign up</h1>
   		</div>
    <table class="table_a">
        <tr>
          <td>
            <h3>
              <label for="userId">회원 아이디</label>
            </h3>
            <input type="text" required class="big" name="userId">
          </td>
        </tr>
        <tr>
          <td>
            <h3>
              <label for="passwd">비밀번호</label>
            </h3>
            <input type="password" required class="big" name="passwd">
          </td>
        </tr>
        <tr>
          <td>
            <h3>
              <label for="userName">이름</label>
            </h3>
            <input type="text" class="big" name="userName">
          </td>
        </tr>
        <tr>
          <td>
            <h3>
              <label for="email">이메일</label>
            </h3>
            <div class="input-group">
              <input type="text" maxlength="20" placeholder="입력하세요" name="email1"> @
              <select id="email2" name="email2">
                <option value="naver">naver.com</option>
                <option value="gmail">gmail.com</option>
                <option value="daum">daum.net</option>
              </select>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <h3>
              <label for="year">주민번호</label>
            </h3>
            <div class="input-group">
              <input type="text" maxlength="6" placeholder="년(6자)" name="ssn">
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <h3>
            <label for="address">주소</label>
            </h3>
            <input type="text"name="addr1">
            <input type="text"name="addr2" >
          </td>
        </tr>
        <tr>
        	<td>
        		<input type="submit" value="확인"/>
        	</td>
        </tr>
      </table>
	</form>
</body>
</html>