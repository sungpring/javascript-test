<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
https://programmers.co.kr/learn/courses/30/lessons/12950?language=javascript<br>
<script>
function solution(arr1, arr2) {
    var answer = [];
    
    for(let i=0; i<arr1.length; i++){
    	let tmp1 = arr1[i];
    	let tmp2 = arr2[i];
    	let tmpArr = [];
    	for(let j=0; j<tmp1.length; j++){
    		tmpArr.push(tmp1[j]+tmp2[j]);
    	}
    	answer.push(tmpArr);
    }
    
    return answer;
}

console.log(solution([[1,2],[2,3]],[[3,4],[5,6]])); //[[4,6],[7,9]]
console.log(solution([[1],[2]],[[3],[4]])); //[[4],[6]]
</script>
</body>
</html>