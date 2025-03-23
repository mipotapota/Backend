<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>성적</title>	
</head>
<body>

	<h1>세 과목의 점수와, 총점, 평균</h1>

<%
	// 입력값을 문자열로 받아오기
	String 이름 = request.getParameter("nam");
	String 국어 = request.getParameter("kor");
	String 영어 = request.getParameter("eng");
	String 수학 = request.getParameter("mat");

	// 문자열을 정수로 변환
  int kor = Integer.parseInt(국어);
  int eng = Integer.parseInt(영어);
  int mat = Integer.parseInt(수학);
  
  // 총점과 평균 계산
  int 총점 = kor + eng + mat;
  float average = 총점 / 3.0f;

  // 평균을 소수점 2자리까지 포맷
  String 평균 = String.format("%.2f", average);
 %>
 
  이름 : <%=이름 %><br>
  국어 : <%=국어 %><br>
  영어 : <%=영어 %><br>
  수학 : <%=수학 %><br>
  총점 : <%=총점 %><br>
  평균 : <%=평균 %><br>
     
</body>
</html>