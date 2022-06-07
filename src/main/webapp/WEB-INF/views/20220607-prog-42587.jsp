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
https://programmers.co.kr/learn/courses/30/lessons/42587?language=javascript<br>

<script type="text/javascript">
function solution(priorities, location) {

	let arr = [];
	for(let i=0; i<priorities.length; i++){
		arr.push([i,priorities[i]]);
	}
		/*
			0: (2) [0, 2]
			1: (2) [1, 1]
			2: (2) [2, 3]
			3: (2) [3, 2]

			2132 -> 1322 -> 3221 -> 221

			1232 일 경우
			1232 -> 2321 -> 3212 -> 212 -> 12 -> 21
			
		*/
	let resultArr = [];
	
	while(resultArr[0]){
		let numArr = arr.shift();
		
	}
	
    return arr;
    //https://data-jj.tistory.com/62
}
console.log(solution([2, 1, 3, 2],2));
</script>
</body>
</html>