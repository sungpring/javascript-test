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
https://programmers.co.kr/learn/courses/30/lessons/77884?language=javascript
<br>
<script>
function solution(left, right) {
    var answer = 0;
    
    for(let i=left; i<=right; i++){
    	let result = findNumber(i);
    	result % 2 == 0 ? answer+=i : answer-=i ;
    }
    
    function findNumber(num){
    	let cnt = 0;
    	for(let i = 1; i <= num; i++) {
            if (num % i == 0) {
                cnt++; // 약수 개수 // i 약수
            }
        }
    	return cnt;
    }
    
    return answer;
}
console.log(solution(13, 17));
</script>
</body>
</html>