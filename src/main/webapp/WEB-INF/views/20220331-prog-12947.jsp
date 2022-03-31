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
https://programmers.co.kr/learn/courses/30/lessons/12947?language=javascript<br>

<script>
function solution(x) {
	let arr = String(x).split("");
	let cnt = 0;
	for(let i=0; i<arr.length; i++){
		cnt += Number(arr[i]);
	}
	
	
	return (x%cnt == 0) ? true : false;
}
console.log(solution(11));
</script>
</body>
</html>