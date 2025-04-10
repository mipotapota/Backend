<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context" %>
<%@page import="javax.naming.InitialContext" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");

	Context initCtx = new InitialContext();
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/skim");
	Connection con = ds.getConnection();
	
	String sql = "insert into member values(?, ?, ?)";
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	PreparedStatement stmt = con.prepareStatement(sql);
	
	stmt.setString(1, name);
	stmt.setString(2, id);
	stmt.setString(3, pwd);
	//4. SQL 실행
	ResultSet rs = stmt.executeQuery();
	
	//5. 객체 해제
	con.close();
	stmt.close();

	//6. list.jsp로 이동	
	response.sendRedirect("list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<%-- 	<%=i %>행이 입력되었습니다! --%>
</body>
</html>