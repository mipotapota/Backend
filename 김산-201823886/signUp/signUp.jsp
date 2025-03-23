<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입 양식</title>
</head>
<body>

<form action="signUp01.jsp" method="post">
	<table>
		<tr>
		 <td>아이디</td>
		 <td><input type="text" name="id"></td>
		</tr>
		
		<tr>
		 <td>비밀번호</td>
		 <td><input type="password" name="pw"></td>
		</tr>		

		<tr>
		 <td>이름</td>
		 <td><input type="text" name="name"></td>
		</tr>		
		
		<tr>
		 <td>성별</td>
		 <td>
		 	<input type="radio" name="gender" value="Male" checked> Male
		 	<input type="radio" name="gender" value="Female"> Female
		 	<input type="radio" name="gender" value="Not"> 선택 안함
		 </td>
		</tr>

		<tr>
		 <td>만 나이</td>
		 <td>
		 	<select name="age" size="5">
		 		<option value="18" selected>18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>				
				<option value="30">30</option>
				<option value="31">31</option>				    
		    <option value="32">32</option>			 		
		 	</select>
		 </td>
		</tr>		

		<tr>
		 <td>주소지</td>
		 <td>
		 		<input type = "checkbox" name = "addr" value = "서울" checked>서울
		 		<input type = "checkbox" name = "addr" value = "부산">부산
		 		<input type = "checkbox" name = "addr" value = "인천">인천
		 		<input type = "checkbox" name = "addr" value = "대구">대구
		 		<input type = "checkbox" name = "addr" value = "대전">대전
		 		<input type = "checkbox" name = "addr" value = "광주">광주
		 		<input type = "checkbox" name = "addr" value = "울산">울산
		 		<input type = "checkbox" name = "addr" value = "세종">세종
		 		<input type = "checkbox" name = "addr" value = "해외">해외
		 </td>
		</tr>		
				
		<tr>
			<td>가입경로</td>
			<td>
				<select name="intro" size="4">
					<option value = "웹 서핑" selected>웹 서핑</option>
					<option value = "지인소개">지인소개</option>
					<option value = "블로그">블로그</option>
					<option value = "유튜브">유튜브</option>															 
				</select>
			</td>			
		</tr>

		<tr>
			<td>관심있는 언어</td>
			<td>
				<select name="lang" size="10" multiple>
					<option value = "영어" selected>영어</option>
					<option value = "한국어">한국어</option>
					<option value = "중국어">중국어</option>
					<option value = "일본어">일본어</option>
					<option value = "스페인어">스페인어</option>
					<option value = "힌디어">힌디어</option>	
					<option value = "아랍어">아랍어</option>							
					<option value = "포르투갈어">포르투갈어</option>
					<option value = "러시아어">러시아어</option>		
					<option value = "독일어">독일어</option>								 
				</select>
			</td>			
		</tr>
		
		<tr>
		 <td>추천인 코드</td>
		 <td><input type="text" name="code"></td>
		</tr>
						
	</table>
	<input type="submit" value="가입">
</form>		

</body>
</html>