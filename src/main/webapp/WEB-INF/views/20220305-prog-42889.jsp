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
https://programmers.co.kr/learn/courses/30/lessons/42889?language=javascript<br>
https://daesiker.tistory.com/8 copy<br>

<script>
/*
function solution(N, stages) {

    let answer = [];
		//실패한 사람은 제외해야되기 떄문에 임시 변수 people생성
    let people = stages.length
    for (let i = 1; i <= N+1; i++) {
				//Array.filter() : 조건을 만족하는 원소만 추출
        let tmp = stages.filter(n => n === i).length
				//answer = [[스테이지, 실패율]]
        answer.push([i, tmp / people])
				//실패한 사람 제외
        people -= tmp
    }
		//마지막은 모두 깬사람들이므로 실패율이 없어서 pop()
    answer.pop()
		//answer의 2번째 원소기준으로 내림차순으로 정렬
    answer = answer.sort((a,b) => b[1] - a[1])
    //Array.map() : 배열을 조건에 맞게 변환
    return answer.map( a => a[0]);
}
*/
function solution(N, stages) {
    var answer = [];
    
    var tmpMap = {};
    stages.sort().map(function(value){
    	tmpMap[value] === undefined ? tmpMap[value] = 1 :  tmpMap[value] += 1;
    });
    /* {1:3,2:4....} */
    var userNum = stages.length;
    var failedNum = 0;
    var tmpMap2 = [];
    for(let i=0; i<N; i++){
    	let obj = {};
    	let successNum;
    	tmpMap[i+1] === undefined ? successNum = 0 : successNum = tmpMap[i+1];
    	failedNum = successNum/userNum; // 0.5
    	if(isNaN(failedNum)) failedNum = 0;
    	userNum = userNum - successNum;
    	obj[i+1] = failedNum;
    	tmpMap2.push(obj);
    }
  	
    tmpMap2.sort(function (a, b) {
    	  let a1= Object.values(a);
    	  let b1= Object.values(b);
    	  if (a1 < b1) {
    	    return 1;
    	  }
    	  if (a1 > b1) {
    	    return -1;
    	  }
    	  return 0;
    });
    
    tmpMap2.map(function(row){
    	answer.push(Object.keys(row).map(Number));
    });
	
    return answer.flat();
    
}
console.log(solution(5, [1, 2, 2, 1, 3])); //32145
//console.log(solution(5, [2, 1, 2, 6, 2, 4, 3, 3])); //[3,4,2,1,5]
//console.log(solution(3,	[1,1,1,1,1,2,2,2,3])); //	[4,1,2,3]
</script>
</body>
</html>