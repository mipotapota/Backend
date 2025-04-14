<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.naming.*, javax.sql.*, java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");

// 폼 데이터 받기
String name = request.getParameter("name");
String username = request.getParameter("username");
String password = request.getParameter("password");
String role = request.getParameter("role");
String authCode = request.getParameter("authCode");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    // DB 연결
    Context initCtx = new InitialContext();
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource) envCtx.lookup("jdbc/mariadb");
    conn = ds.getConnection();

    // 교수일 경우 인증 코드 확인
    if ("professor".equals(role)) {
        String sql = "SELECT * FROM auth_codes WHERE code_value = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, authCode);
        rs = pstmt.executeQuery();

        if (!rs.next()) {
            out.println("<script>");
            out.println("alert('교수 인증 코드가 틀렸습니다.');");
            out.println("history.back();");
            out.println("</script>");
            return;
        }

        rs.close();
        pstmt.close();
    }

    // 사용자 INSERT
    String sql = "INSERT INTO users (name, username, password, role) VALUES (?, ?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, username);
    pstmt.setString(3, password);
    pstmt.setString(4, role);

    int result = pstmt.executeUpdate();

    if (result > 0) {
        out.println("<script>alert('회원가입 성공'); location.href='index.jsp';</script>");
    } else {
        out.println("<script>alert('회원가입 실패'); history.back();</script>");
    }

} catch (Exception e) {
    e.printStackTrace();
    out.println("<script>");
    out.println("alert('에러 발생: " + e.getMessage().replace("'", "\\'") + "');");
    out.println("history.back();");
    out.println("</script>");
} finally {
    if (rs != null) try { rs.close(); } catch (Exception e) {}
    if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
    if (conn != null) try { conn.close(); } catch (Exception e) {}
}
%>
