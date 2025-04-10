<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context" %>
<%@page import="javax.naming.InitialContext" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%

	String id = request.getParameter("id");

	Context initCtx = new InitialContext();
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/skim");
	Connection con = ds.getConnection();
	
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	Statement stmt = con.createStatement();

	//4. SQL 실행
	ResultSet rs = stmt.executeQuery("select * from member where id ='"+id + "' ");

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