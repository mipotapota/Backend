<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%
String id = request.getParameter("id");
String name = "";
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
  Class.forName("org.mariadb.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/backend", "skim", "1111");

  pstmt = con.prepareStatement("SELECT * FROM member WHERE id=?");
  pstmt.setString(1, id);
  rs = pstmt.executeQuery();
  if(rs.next()){
    name = rs.getString("name");
  }
} catch(Exception e) {
  e.printStackTrace();
} finally {
  if(rs != null) try { rs.close(); } catch(Exception e) {}
  if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
  if(con != null) try { con.close(); } catch(Exception e) {}
}
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>사용자 수정</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
  <div class="container mt-4">
    <h2 class="text-center">사용자 정보 수정</h2>
    <form action="updatePro.jsp" method="post">
      <input type="hidden" name="id" value="<%=id%>">
      <div class="form-group">
        <label>아이디</label>
        <input type="text" class="form-control" value="<%=id%>" disabled>
      </div>
      <div class="form-group">
        <label>이름</label>
        <input type="text" name="name" class="form-control" value="<%=name%>" required>
      </div>
      <div class="form-group">
        <label>새 비밀번호</label>
        <input type="password" name="pwd" class="form-control" required>
        <small class="form-text text-muted">비밀번호를 변경하려면 새 비밀번호를 입력하세요.</small>
      </div>
      <div class="text-center">
        <button type="submit" class="btn btn-primary">변경</button>
        <a href="delete.jsp?id=<%=id%>" class="btn btn-danger" 
           onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
        <a href="list.jsp" class="btn btn-secondary">목록</a>
      </div>
    </form>
  </div>
</body>
</html>