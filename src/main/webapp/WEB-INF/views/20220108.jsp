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
https://programmers.co.kr/learn/courses/30/lessons/77484?language=javascript<br>

<script>
function solution(lottos, win_nums) {
    var answer = [];
    
    let lottosSort=lottos.sort();
    let winNumsSort=win_nums.sort();
    
    answerNum = [];
    
    for(let i=0; i<lottosSort.length; i++){
    	if(lottosSort[i] == 0){
    		answerNum.push(0);
    	}
    }
    
    for(let i=0; i<lottosSort.length; i++){
    	for(let j=0; j<winNumsSort.length; j++){
    		lottosSort[i] == winNumsSort[j] ? answerNum.push(lottosSort[i]) : '';
    	}
    }
    
    answer.push(testNum(answerNum));
    answer.push(testNum(answerNum.filter(number => number != 0)));
    
    function testNum(arr){
    	let resultNum = 6;
    	arr.length == 6 ? resultNum = 1 : '';
    	arr.length == 5 ? resultNum = 2 : '';
    	arr.length == 4 ? resultNum = 3 : '';
    	arr.length == 3 ? resultNum = 4 : '';
    	arr.length == 2 ? resultNum = 5 : '';
    	return resultNum;
    }
    
    return answer;
}
let lottos=[44, 1, 0, 0, 31, 25];
let win_nums=[31, 10, 45, 1, 6, 19];
console.log(solution(lottos,win_nums));
</script>
</body>
</html>