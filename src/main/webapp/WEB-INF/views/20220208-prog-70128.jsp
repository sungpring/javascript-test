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
https://programmers.co.kr/learn/courses/30/lessons/70128?language=javascript<br>
<script>
function solution(a, b) {
    let cnt = 0;
  	for(let i=0; i<a.length; i++){
  		cnt+=a[i]*b[i];
  	}
    return cnt;
}
console.log(solution([1,2,3,4]	, [-3,-1,0,2]));
</script>
</body>
</html>