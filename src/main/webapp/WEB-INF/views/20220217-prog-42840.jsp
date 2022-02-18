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
https://programmers.co.kr/learn/courses/30/lessons/42840?language=javascript<br>
<script>
function solution(answers) {
    var answer = [];
    
    let ansLength = answers.length;
    
    let first = "12345"; //5
    let second = "21232425"; //8
    let third = "3311224455"; //10
    
    let result = new Array(0,0,0);
    
   	let firstRemain = first.substr(0,ansLength%5);
   	first = first.repeat(Math.floor(ansLength/5));
   	first += firstRemain;
   	first = first.split("").map(Number);
   
   	let secondRemain = second.substr(0,ansLength%8);
   	second = second.repeat(Math.floor(ansLength/8));
   	second += secondRemain;
   	second = second.split("").map(Number);
  
   	let thirdRemain = third.substr(0,ansLength%10);
   	third = third.repeat(Math.floor(ansLength/10));
   	third += thirdRemain;
   	third = third.split("").map(Number);
  
    for(let i=0; i<ansLength; i++){
    	if(first[i] == answers[i]) result[0]++ ;
    	if(second[i] == answers[i]) result[1]++ ;
    	if(third[i] == answers[i]) result[2]++ ;
    }
    
    let tmp = 0;
    
    for(let i=0; i<result.length; i++){
    	if(result[i]>tmp){
    		answer.pop();
    		answer.push(i+1);
    		tmp = result[i];
    	}else if(result[i] == tmp){
    		answer.push(i+1);
    		tmp = result[i];
    	}
    }
    
    answer.sort();
    
    return answer;
    /*
    function solution(answers) {
    var answer = [];
    var a1 = [1, 2, 3, 4, 5];
    var a2 = [2, 1, 2, 3, 2, 4, 2, 5]
    var a3 = [ 3, 3, 1, 1, 2, 2, 4, 4, 5, 5];

    var a1c = answers.filter((a,i)=> a === a1[i%a1.length]).length;
    var a2c = answers.filter((a,i)=> a === a2[i%a2.length]).length;
    var a3c = answers.filter((a,i)=> a === a3[i%a3.length]).length;
    var max = Math.max(a1c,a2c,a3c);

    if (a1c === max) {answer.push(1)};
    if (a2c === max) {answer.push(2)};
    if (a3c === max) {answer.push(3)};


    return answer;
} 미친풀이
    */
}
console.log(solution([5,4]));
</script>
</body>
</html>