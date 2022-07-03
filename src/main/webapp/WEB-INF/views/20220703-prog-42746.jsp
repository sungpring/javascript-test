<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
https://programmers.co.kr/learn/courses/30/lessons/42746?language=javascript<br>
https://greedysiru.tistory.com/565 - copy
<script type="text/javascript">
function solution(numbers) {
	var answer = numbers.map(c=> c + '').
	sort((a,b) =>(b+a) - (a+b)).join('');
	//첫번째 시작할 시 a가 30 , b가 3
	/*
		a: "30"
		b: "3" -> 27

		a: "34"
		b: "30" -> -396

		a: "34"
		b: "30" -> -396

		a: "34"
		b: "3" -> -9

		a: "5"
		b: "3" -> -18

		a: "5"
		b: "34" -> -189

		a: "9"
		b: "3" -> -54

		a: "9"
		b: "34" -> -585

		a: "9"
		b: "5" -> -36

		answer: "9534330"
	
	*/
	
	return answer[0]==='0'? '0' : answer;
    
    return answer;
}
console.log(solution([3, 30, 34, 5, 9]));
</script>
</body>
</html>