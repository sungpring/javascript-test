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
https://programmers.co.kr/learn/courses/30/lessons/87389?language=javascript<br>
<script>
function solution(n) {
	
    let cnt = 0;
    while(cnt <= n){
    	if(n%cnt == 1) break;
    	cnt++;
    }
    
    return cnt;
}
console.log(solution(12));
</script>
</body>
</html>