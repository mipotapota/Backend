# 한 학생의 국어, 영어, 수학 점수를 입력받아 세 과목의 점수와, 총점, 평균을 출력하는 프로그램을 작성

## 입력값을 문자열로 받아오기위해 String 이름 = request.getParameter("nam");과 같이 입력. 문자열을 정수로 변환하기 위해 int kor = Integer.parseInt(국어);과 같이 입력. 총점과 평균을 계산하기 위해 int 총점 = kor + eng + mat; float average = 총점 / 3.0f;과 같이 입력. 평균을 소수점 아래 2자리까지 출력하고 소수점 3번째 자리에서 반올림되어 소수점 2번째 자리까지 숫자가 있는 문자열을 얻기 위해 String 평균 = String.format("%.2f", average);과 같이 입력, int형은 %d가 float형은 %f, %.2는 3번째 이상의 소수점은 반올림하여 두번째 소수점까지 나타내라는 의미.
## ![스크린샷 2025-03-23 145407](https://github.com/user-attachments/assets/5814d0a0-2bc0-4721-b95c-b61cd827e207) ![스크린샷 2025-03-23 145417](https://github.com/user-attachments/assets/e22848fd-d1d9-404c-8d54-324b52b1372d)
