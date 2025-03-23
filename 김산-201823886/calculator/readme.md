# 간단한 계산기 제작
 
boolean validOperation = true;는 연산의 유효성을 나타내는 변수.
boolean: 이 데이터 타입은 true(참) 또는 false(거짓) 두 가지 값만 가질 수 있음.
validOperation: 이 변수는 연산이 유효한지 여부를 저장함. 처음에는 true로 설정하여 연산이 유효하다고 가정함.
validOperation은 연산이 유효한지를 추적하는 변수로, 나누기 연산에서 0으로 나누는 경우와 같이 유효하지 않은 연산이 발생했을 때 이를 처리하는 데 사용됨.



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
switch 문을 사용하여 연산자를 확인하고 해당하는 연산을 수행함.
나누기 연산 시, 0으로 나누는 경우를 체크하여 오류를 방지함.

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
연산이 유효한 경우, 결과 메시지를 생성하여 출력함.
유효하지 않은 경우(예: 0으로 나누기) 오류 메시지를 출력함.



### ![스크린샷 2025-03-23 202835](https://github.com/user-attachments/assets/20f3c477-fac5-4d00-8125-b9941e551a12) ![스크린샷 2025-03-23 202842](https://github.com/user-attachments/assets/38f31a8d-d555-4539-8889-ccdc32be29e9) ![스크린샷 2025-03-23 203056](https://github.com/user-attachments/assets/dbc962e7-fc22-4ca9-8229-5a425bdce8d5) ![스크린샷 2025-03-23 202850](https://github.com/user-attachments/assets/6dad44fc-3924-485b-8d79-5c381d45c50b) ![스크린샷 2025-03-23 203105](https://github.com/user-attachments/assets/fb83c045-9a1a-4e5a-9808-68d5b3fcd071) ![스크린샷 2025-03-23 202857](https://github.com/user-attachments/assets/b2d34522-65ba-40e1-a816-1805a452413d) ![스크린샷 2025-03-23 203112](https://github.com/user-attachments/assets/52f0ab90-e752-48c1-9541-330dc3393c16) ![스크린샷 2025-03-23 202905](https://github.com/user-attachments/assets/0b1c72b6-9570-41a5-b26c-daa3e6027c7e)






