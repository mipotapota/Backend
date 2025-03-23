<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
</head>
<body>

<h1>게시판 글쓰기</h1>
<form method="post" action="community01.jsp">

<table>
	<tr>
		<td>제목</td>
		<td><input type="text" name="title"></td>
	</tr>
	
	<tr>
		<td>내용</td>
		<td>
			 <textarea name="content" rows="10" required></textarea>
		</td>
	</tr>
	
</table>        
	<input type="submit" value="게시하기">
</form>
</body>
</html>