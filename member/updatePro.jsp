<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, java.security.MessageDigest" %>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");

// 비밀번호 해싱
MessageDigest md = MessageDigest.getInstance("SHA-256");
md.update(pwd.getBytes());
byte[] pwdDigest = md.digest();
StringBuilder sb = new StringBuilder();
for (byte b : pwdDigest) {
    sb.append(String.format("%02x", b));
}
String hashedPwd = sb.toString();

Connection con = null;
PreparedStatement pstmt = null;

try {
    Class.forName("org.mariadb.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/backend", "skim", "1111");

    String sql = "UPDATE member SET name=?, pwd=? WHERE id=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, hashedPwd);
    pstmt.setString(3, id);
    pstmt.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
} finally {
    if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
    if(con != null) try { con.close(); } catch(Exception e) {}
}
response.sendRedirect("list.jsp");
%>