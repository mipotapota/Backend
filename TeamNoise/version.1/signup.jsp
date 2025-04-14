<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <script>
    // 교수 선택 시 인증 코드 입력창 표시
    function toggleAuthCode() {
      const isProfessor = document.querySelector('input[name="role"]:checked').value === 'professor';
      document.getElementById("authCodeDiv").style.display = isProfessor ? "block" : "none";
    }

    // 비밀번호 일치 여부 확인
    function checkPasswordMatch() {
      const pw1 = document.getElementById("password").value;
      const pw2 = document.getElementById("passwordCheck").value;
      const msg = document.getElementById("pwMsg");

      if (pw2.length === 0) {
        msg.innerText = "";
        return;
      }

      if (pw1 === pw2) {
        msg.innerText = "✅ 비밀번호가 일치합니다.";
        msg.style.color = "green";
      } else {
        msg.innerText = "❌ 비밀번호가 일치하지 않습니다.";
        msg.style.color = "red";
      }
    }

    // 전체 유효성 검사
    function validateForm() {
      const name = document.forms["signupForm"]["name"].value.trim();
      const username = document.forms["signupForm"]["username"].value.trim();
      const pw1 = document.getElementById("password").value.trim();
      const pw2 = document.getElementById("passwordCheck").value.trim();

      if (name === "" || username === "" || pw1 === "" || pw2 === "") {
        alert("모든 항목을 입력해주세요.");
        return false;
      }

      if (pw1 !== pw2) {
        alert("비밀번호가 일치하지 않습니다.");
        return false;
      }

      return true; // 유효성 통과
    }
  </script>
</head>
<body>
  <h2>회원가입</h2>
  <form name="signupForm" action="signupPro.jsp" method="post" onsubmit="return validateForm()">
    이름: <input type="text" name="name"><br>
    아이디: <input type="text" name="username"><br>

    비밀번호: <input type="password" name="password" id="password"><br>
    비밀번호 확인:
    <input type="password" id="passwordCheck" onkeyup="checkPasswordMatch()">
    <span id="pwMsg" style="margin-left: 10px;"></span><br>

    역할:
    <input type="radio" name="role" value="professor" onclick="toggleAuthCode()"> 교수
    <input type="radio" name="role" value="student" onclick="toggleAuthCode()" checked> 학생<br>

    <div id="authCodeDiv" style="display: none;">
      교수 인증 코드: <input type="text" name="authCode"><br>
    </div>

    <input type="submit" value="가입하기">
  </form>
</body>
</html>
