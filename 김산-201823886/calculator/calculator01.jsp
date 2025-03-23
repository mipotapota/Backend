<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>간단한 계산기</title>
</head>
<body>

	<h2>계산 결과</h2>

	<%
	int fir = Integer.parseInt(request.getParameter("fir"));
	int sec = Integer.parseInt(request.getParameter("sec"));
	String ope = request.getParameter("ope");
	
	long result = 0;
	boolean validOperation = true;
	
	switch(ope) {
	case "+" : 
		result = fir + sec; 
		break;
	case "-" : 
		result = fir - sec; 
		break;
	case "*" : 
		result = fir * sec; 
		break;
	case "/" :
		if (sec != 0) {
			result = fir / sec; 
		} else {
			validOperation = false; // 나누기 0 예외 처리
		}
		break;	
	default:
		validOperation = false; // 유효하지 않은 연산자 처리
	}
	
	if (validOperation) {
		// 연산자에 따라 결과 메시지 다르게 출력
		String operationMessage = "";
		switch(ope) {
			case "+":
				operationMessage = "더하기 결과는 " + result + "입니다.";
				break;
			case "-":
				operationMessage = "빼기 결과는 " + result + "입니다.";
				break;
			case "*":
				operationMessage = "곱하기 결과는 " + result + "입니다.";
				break;
			case "/":
				operationMessage = "나누기 결과는 " + result + "입니다.";
				break;
		}
	%>
		<%= operationMessage %>
	<%
	} else {
	%>
		계산 오류: 나눗셈 불능입니다. 0으로 나눌 수 없습니다.
	<%
	}
	%>