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
https://programmers.co.kr/learn/courses/30/lessons/12977?language=javascript<br>
<script>
function solution(nums) {
    let result = 0;
    
    const isPrime = (n) => {
  	  for (let i = 2; i <= Math.sqrt(n); i++) {
  	    if (n % i === 0) {
  	      return false;
  	    }
  	  }

  	  return true;
  	}
  
   	
    for(let i=0; i<nums.length-2; i++){
    	for(let j=i+1; j<nums.length-1; j++){
    		for(let k=j+1; k<nums.length; k++){
    			if(isPrime(nums[i]+nums[j]+nums[k])) result++;
    		}
    	}
    }
    
    
    return result;
}
console.log(solution([1,2,7,6,4]));
</script>
</body>
</html>