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
https://programmers.co.kr/learn/courses/30/lessons/62048?language=javascript<br>
https://www.youtube.com/watch?v=LiJh0h1JKG4 - 참고
<script>
function solution(w, h) {
	
	//최소 공약수 구하는 펑션
	//재귀함수
	let funcGCD = function(a,b){
		while(b>0){
			let tmp = b;
			b = a % b
			a = tmp;
		}
		return a; 
	}
	
    return 	(w * h) - (w + h - funcGCD(w, h));
}
console.log(solution(8,12));
</script>
</body>
</html>