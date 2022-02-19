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
https://programmers.co.kr/learn/courses/30/lessons/43165?language=javascript<br>

<script>
function solution(numbers, target) {
    var answer = 0;
    
    let numberCopyArr = numbers.map(x=> x*-1);
    let mapPlusNMinus = [[...numbers] , [...numberCopyArr] ];
    let mapTrueNFalse = Array.from(Array(2), () => Array(numbers.length).fill(false));
    
    console.log(mapPlusNMinus[0][0]); // [0][0] [0][1] [0][0] 32확률 bfs 로 풀려 했음
    
    /*
    	1 이 들어오면 처음은 양수
    	2*2*2*2*2 의 확률에서 target 숫자가 나와야함
    	[1, 1, 1, 1, 1] [-1, -1, -1, -1, -1] 이 두개의 그룹으로 조합을 해야함
    	1-1-1-1-1 / -1+1-1-1-1 
    	
    	2차원 배열 생성하자
    */
    for(let i=0; i<numbers.length; i++){
    	numbers[i]
    }
    return answer;
}
console.log(solution([1, 1, 1, 1, 1],3));
</script>
</body>
</html>