<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>간단한 계산기</title>
</head>
<body>
	<h1>간단한 계산기</h1>
<form action="calculator01.jsp" method="post">
	x : <input type="text" name="fir"><br>
	y : <input type="text" name="sec"><br>
	사칙연산 : <select name="ope">
		<option value="+">+(더하기)</option>
		<option value="-">-(빼기)</option>
		<option value="*">*(곱하기)</option>
		<option value="/">/(나누기)</option>
	</select>
	<input type="submit" value="계산하기">
</form>
    
</body>
</html>