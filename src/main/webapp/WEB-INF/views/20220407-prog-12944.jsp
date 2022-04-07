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
https://programmers.co.kr/learn/courses/30/lessons/12944?language=javascript
<script>
function solution(arr) {
    var answer = 0;
    
    arr.forEach(num => {
    	answer += num;
    });
    
    return answer/arr.length;
}
</script>
</body>
</html>