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
https://seanb12.tistory.com/259 - 참고
https://nyang-in.tistory.com/252 - 참고

<script>
function solution(numbers, target) {
    /*
	var answer = 0;
    
    let numberCopyArr = numbers.map(x=> x*-1);
    let mapPlusNMinus = [[...numbers] , [...numberCopyArr] ];
    let mapTrueNFalse = Array.from(Array(2), () => Array(numbers.length).fill(false));
    
    console.log(mapPlusNMinus[0][0]); // [0][0] [0][1] [0][0] 32확률 bfs 로 풀려 했음
    
    
    	1 이 들어오면 처음은 양수
    	2*2*2*2*2 의 확률에서 target 숫자가 나와야함
    	[1, 1, 1, 1, 1] 
    	[-1, -1, -1, -1, -1] 이 두개의 그룹으로 조합을 해야함
    	1-1-1-1-1 / -1+1-1-1-1 
    	
    	2차원 배열 생성하자
    
    for(let i=0; i<numbers.length; i++){
    	numbers[i]
    }
    return answer;
    */
	
	  let answer = 0;
	  getAnswer(0, 0);
	  function getAnswer(x, value) {
		  //console.log(x);
	    if (x < numbers.length) {
	      getAnswer(x + 1, value + numbers[x]);
	     // console.log("x:"+x+"  value:"+value+" numbers[x]:"+numbers[x]);
	      getAnswer(x + 1, value - numbers[x]);
	     // console.log("x:"+x+"  value:"+value+" numbers[x]:"+numbers[x]);
	    } else {
	      if (value === target) {
	        answer++;
	      }
	    }
	  }
	  return answer;
    
}
console.log(solution([1, 2, 3, 4, 5],7));
</script>
</body>
</html>