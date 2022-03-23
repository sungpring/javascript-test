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
https://programmers.co.kr/learn/courses/30/lessons/12982?language=javascript<br>
<script>
function solution(d, budget) {
    let arr = d.sort();
    
    let cnt = 0;
    let cntNum = 0;
    for(let num of arr){
    	cntNum+=num;
		if(cntNum > budget){
    		break;
    	}
		cnt++;
    }
    
    return cnt;
}
console.log(solution([1,3,2,5,4],9));//3
console.log(solution([2,2,3,3],10));//4
</script>

</body>
</html>