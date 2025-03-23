# 회원 가입 양식(단일 값 입력 태그들과 다중 선택 입력 태그를 모두 활용)을 만들고, 입력된 값을 출력하는 JSP 프로그램을 작성

## 	체크박스는 input type = "checkbox" name = "addr" value = "서울" checked서울로 드롭다운 리스트는 select name="lang" size="10" multiple과 같은 방법으로 작성. String[] addr = request.getParameterValues("addr"); 주소지 : <%for(int i = 0; i < addr.length; i++) {out.println(addr[i] + " "); } %>br, String[] lang = request.getParameterValues("lang"); 관심있는 언어 : <%for(int i = 0; i < lang.length; i++) {out.println(lang[i] + " "); } %>br로 다중 선택 입력 값 출력
## ![스크린샷 2025-03-23 130015](https://github.com/user-attachments/assets/2c94148b-ef03-43fa-a36c-a78ac5bd8088) ![스크린샷 2025-03-23 130024](https://github.com/user-attachments/assets/51a6a208-a169-4b3e-8ae3-431022c743be)

