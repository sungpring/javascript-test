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
https://programmers.co.kr/learn/courses/30/lessons/92335?language=javascript<br>

<script>
function solution(n, k) {
    var answer = 0;
    
    let numTen = '';
    let n2 = n;
    
    while(n2 > 0){
    	numTen=(n2 % k)+numTen; //437674
    	n2 = Math.floor(n2 / k);
    }
    
    let numArr = numTen.split('0');
    
    let isPrime = (n) => {
   	  	for (let i = 2; i <= Math.sqrt(n); i++) {
   	    	if (n % i === 0) {
   	      		return false;
   	    	}
   	  	}
   	  	return true;
   	}
    
    for( let num of numArr ){
    	if(isPrime(Number(num)) && Number(num) !== 1 && num !== '') answer++; 
    }
    
    return answer;
}
console.log(solution(437674, 3));
console.log(solution(110011, 10));
</script>
</body>
</html>