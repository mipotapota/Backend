<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	%>

	제목 : <%=request.getParameter("title") %><br>
	내용 : <%=request.getParameter("content") %><br>
	
</body>
</html>