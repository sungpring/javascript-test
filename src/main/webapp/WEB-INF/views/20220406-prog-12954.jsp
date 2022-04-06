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
https://programmers.co.kr/learn/courses/30/lessons/12954?language=javascript
<script>
function solution(x, n) {
    var answer = [];
    
    for(let i=0; i<n; i++){
    	answer.push(x*(i+1));
    }
    
    return answer;
}
console.log(solution(2,5));
</script>
</body>
</html>