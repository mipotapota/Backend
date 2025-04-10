<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
<%
    // 삭제할 아이디 가져오기
    String id = request.getParameter("id");

    // DB 연결 설정
    Context initCtx = new InitialContext();
    DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/skim");
    Connection con = ds.getConnection();
    
    // SQL 삭제 쿼리 준비
    String sql = "DELETE FROM member WHERE id=?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // 자원 해제
    pstmt.close();
    con.close();
%>
	
<script>
		let ans = alert("삭제되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
</script>