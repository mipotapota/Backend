<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<% 	
	String id = request.getParameter("id");
    String name = "";
    String pwd = "";

//1. DB 연동 드라이버 로드

//2. 연결 객체 생성
	Context initCtx = new InitialContext();
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/skim");
	Connection con = ds.getConnection();
//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	Statement stmt = con.createStatement();
//4. SQL 실행
	ResultSet rs = stmt.executeQuery("select * from member where id ='"+id + "' ");

//5. 주어진 id에 해당되는 name과 pwd 추출
    if(rs.next()) {
        name = rs.getString("name");
        pwd = rs.getString("pwd");
    }
    
    // 자원 해제
    rs.close();
    stmt.close();
    con.close();
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