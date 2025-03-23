# 간단한 계산기 제작
## long result = 0;
## boolean validOperation = true;
##
## switch(ope) {
## case "+" : 
## 	result = fir + sec; 
## 	break;
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
switch 문을 사용하여 연산자를 확인하고 해당하는 연산을 수행합니다.
나누기 연산 시, 0으로 나누는 경우를 체크하여 오류를 방지합니다.
### ![스크린샷 2025-03-23 202835](https://github.com/user-attachments/assets/20f3c477-fac5-4d00-8125-b9941e551a12) ![스크린샷 2025-03-23 202842](https://github.com/user-attachments/assets/38f31a8d-d555-4539-8889-ccdc32be29e9) ![스크린샷 2025-03-23 203056](https://github.com/user-attachments/assets/dbc962e7-fc22-4ca9-8229-5a425bdce8d5) ![스크린샷 2025-03-23 202850](https://github.com/user-attachments/assets/6dad44fc-3924-485b-8d79-5c381d45c50b) ![스크린샷 2025-03-23 203105](https://github.com/user-attachments/assets/fb83c045-9a1a-4e5a-9808-68d5b3fcd071) ![스크린샷 2025-03-23 202857](https://github.com/user-attachments/assets/b2d34522-65ba-40e1-a816-1805a452413d) ![스크린샷 2025-03-23 203112](https://github.com/user-attachments/assets/52f0ab90-e752-48c1-9541-330dc3393c16) ![스크린샷 2025-03-23 202905](https://github.com/user-attachments/assets/0b1c72b6-9570-41a5-b26c-daa3e6027c7e)






