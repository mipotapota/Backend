<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.naming.*, javax.sql.*, java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("username");
String password = request.getParameter("password");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    // JNDI로 MariaDB 연결
    Context initCtx = new InitialContext();
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource) envCtx.lookup("jdbc/mariadb");
    conn = ds.getConnection();

    // 로그인 사용자 조회
    String sql = "SELECT * FROM users WHERE username=? AND password=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, username);
    pstmt.setString(2, password);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        // 로그인 성공 → 세션에 사용자 정보 저장
        session.setAttribute("userId", rs.getInt("user_id"));
        session.setAttribute("username", rs.getString("username"));
        session.setAttribute("name", rs.getString("name"));
        session.setAttribute("role", rs.getString("role"));

        response.sendRedirect("main.jsp");
    } else {
        // 로그인 실패
        out.println("<script>alert('로그인 실패: 아이디 또는 비밀번호를 확인하세요.'); history.back();</script>");
    }

} catch (Exception e) {
    // 에러 출력 (콘솔 + 브라우저)
    e.printStackTrace();
    out.println("<script>alert('에러 발생: " + e.getMessage() + "'); history.back();</script>");
} finally {
    // 자원 정리
    if (rs != null) try { rs.close(); } catch (Exception e) {}
    if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
    if (conn != null) try { conn.close(); } catch (Exception e) {}
}
%>
