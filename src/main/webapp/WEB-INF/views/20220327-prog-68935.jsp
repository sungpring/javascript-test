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
https://programmers.co.kr/learn/courses/30/lessons/68935?language=javascript<br>
<script>
function solution(n) {
    /*
    let numTen = '';
    let n2 = n;
    
    while(n2 > 0){
    	numTen = numTen+(n2 % 3); 
    	n2 = Math.floor(n2 / 3);
    }
    
    let n3 = parseInt(numTen);
    */
    
    let n3 = n.toString(3).split('').reverse().join('');
    
    return parseInt(n3, 3);
}
console.log(solution(45));
</script>
</body>
</html>