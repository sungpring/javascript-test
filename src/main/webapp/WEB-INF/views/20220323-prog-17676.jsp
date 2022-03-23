<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
</head>
<body>
https://programmers.co.kr/learn/courses/30/lessons/17676?language=javascript<br>

<script>
function solution(lines) {
	/*
		입력: [
		"2016-09-15 20:59:57.421 0.351s", 1
		"2016-09-15 20:59:58.233 1.181s", 2
		"2016-09-15 20:59:58.299 0.8s", 3
		"2016-09-15 20:59:58.688 1.041s", 4
		"2016-09-15 20:59:59.591 1.412s", 5
		"2016-09-15 21:00:00.464 1.466s", 6
		"2016-09-15 21:00:00.741 1.581s", 7
		"2016-09-15 21:00:00.748 2.31s", 8
		"2016-09-15 21:00:00.966 0.381s", 9 
		"2016-09-15 21:00:02.066 2.62s" 10
		]
		
		내가 만들려는 로직
		
		1.첫번째 값이 들어가면
		두번째 값과 비교하여 1초 이하면
		세번째 값과 비교하고
		비교하여 숫자가 1초 초과면
		
		그리고 총 비교한 개수를 변수에 넣어준다.
		
		2.두번째로 넘어간다.
		두번째는 세번째와 비교하여 1초 이하면
		네번째 값과 비교하고...
		
		전에 들어간 변수와 비교하여 두번째과정의 숫자가 높다면 
		그 숫자를 넣어 초기화시켜준다.
		
	*/
    var answer = 0;
    return answer;
}
</script>

</body>
</html>