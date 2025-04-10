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