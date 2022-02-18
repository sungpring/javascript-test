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
https://programmers.co.kr/learn/courses/30/lessons/42839?language=javascript<br>
https://velog.io/@goblin820/%EC%BD%94%EB%94%A9%ED%85%8C%EC%8A%A4%ED%8A%B8-JavaScript-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EC%86%8C%EC%88%98-%EC%B0%BE%EA%B8%B0 -참고
<script>
function solution(numbers) {
    
    let array = numbers.split("").map(Number);;
    //1234 -> 12 , 123 , 1234 
   	let length = array.length;
    let output = [];
    let isVisit = new Array(length);
    isVisit.fill(false);
    
    let resultArrBefore = [];
    let resultCnt = 0;
    
    for(let cnt=1; cnt<=length; cnt++){
    	getAllCombiNum(array, output, isVisit, 0, length, cnt);
    }
    
   
    
    resultArrBefore = resultArrBefore.filter((element, index) => {
        return resultArrBefore.indexOf(element) === index;
    });
    
    for(let i=0; i<resultArrBefore.length; i++){
    	 if(isPrime(resultArrBefore[i]) == true) resultCnt++;
    }
    
    //https://secr.tistory.com/504 - 참고
    function getAllCombiNum(array, output, isVisit, depth, length, count){
    	if(count==0){ 
    		resultArrBefore.push((Number(output.join(""))));
    		return;
    	}
    	for(let i=0; i<length; i++){
    		if(isVisit[i]!=true){
    			isVisit[i]=true;
    			output[depth] = array[i];
    			getAllCombiNum(array, output, isVisit, depth+1, length, count-1); //재귀함수
    			/*	array 값이 1,2,3,4,5 라면
    				처음 재귀함수 for문에선 [1],[2],[3],[4],[5] 로 찍힌다.
    				왜냐면 count-1(count 초기값1)때문에 output 이 증가하지 않는다
    				
    				두번째에서는 for문에서 [1, 2] [1, 3] [1, 4]... 이렇게 찍힌다.
    			*/
    			isVisit[i]=false;
    		}
    	}
    }
    
	function isPrime(n) {
		if (n <= 1) {
			return false;
		}
		let divisor = 2;
		while (n > divisor) {
			if (n % divisor === 0) {
				return false;
			}
			divisor++;
		}
		return true;
	}
	
    return resultCnt;
}
console.log(solution("011"));//2
//console.log(solution("12345"));
</script>
</body>
</html>