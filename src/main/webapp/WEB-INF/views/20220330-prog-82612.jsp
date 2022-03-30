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
https://programmers.co.kr/learn/courses/30/lessons/82612?language=javascript<br>

<script>
function solution(price, money, count) {
	
    let cnt = 0;
    for(let i=1; i<=count; i++){
    	cnt += (price * i); 
    }
    
    return (cnt-money) > 0 ? cnt-money : 0 ;
}
console.log(solution(3,20,4,10));
</script>
</body>
</html>