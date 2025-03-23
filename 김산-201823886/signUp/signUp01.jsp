<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>입력된 회원가입 정보 출력</title>
</head>
<body>
	
<%
	request.setCharacterEncoding("UTF-8");

	String[] addr = request.getParameterValues("addr");
	String[] lang = request.getParameterValues("lang");
%>

	아이디 : <%=request.getParameter("id") %><br>
	비밀번호 : <%=request.getParameter("pw") %><br>
	이름 : <%=request.getParameter("name") %><br>
	성별 : <%=request.getParameter("gender") %><br>
	만 나이 : <%=request.getParameter("age") %><br>
	
	주소지 : <%for(int i = 0; i < addr.length; i++) {
		out.println(addr[i] + " "); } %><br>
		
	가입경로 : <%=request.getParameter("intro") %><br>
	추천인 코드 : <%=request.getParameter("code") %><br>
	
	관심있는 언어 : <%for(int i = 0; i < lang.length; i++) {
		out.println(lang[i] + " "); } %><br>

</body>
</html>