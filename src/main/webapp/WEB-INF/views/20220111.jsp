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
https://programmers.co.kr/learn/courses/30/lessons/86051<br>
<script>
function solution(numbers) {
    const arr = new Array(10);
    for(let i = 0; i < 10; i++){
        arr[i] = numbers.indexOf(i) === -1 ? true : false;
    }
    
    return arr.reduce((ans, val, idx) => val ? ans + idx : ans, 0);
}
let numbers = [1,2,3,4,6,7,8,0];
console.log(solution(numbers));
</script>
</body>
</html>