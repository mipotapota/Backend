<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>로그인</title>
</head>
<body>
  <h2>로그인</h2>
  <form action="loginPro.jsp" method="post">
    아이디: <input type="text" name="username"><br>
    비밀번호: <input type="password" name="password"><br>
    <input type="submit" value="로그인">
  </form>
  <p>회원이 아니신가요? <a href="signup.jsp">회원가입</a></p>
</body>
</html>
