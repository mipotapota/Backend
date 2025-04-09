<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%
String id = request.getParameter("id");
Class.forName("org.mariadb.jdbc.Driver");
Connection con = null;
PreparedStatement pstmt = null;

try {
    con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/backend", "skim", "1111");
    String sql = "DELETE FROM member WHERE id=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.executeUpdate();
} catch(Exception e) {
    e.printStackTrace();
} finally {
    if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
    if(con != null) try { con.close(); } catch(Exception e) {}
}
response.sendRedirect("list.jsp");
%>