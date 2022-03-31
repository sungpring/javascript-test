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
https://programmers.co.kr/learn/courses/30/lessons/12948?language=javascript<br>

<script>
function solution(phone_number) {
	let startNum = phone_number.length - 4;
	let tmp = phone_number.substr(startNum, phone_number.length);
	tmp = ("*".repeat(startNum)) + tmp;
	return tmp;
}
console.log(solution("01033334444"));
console.log(solution("11444"));
</script>
</body>
</html>