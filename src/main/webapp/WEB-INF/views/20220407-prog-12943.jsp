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
https://programmers.co.kr/learn/courses/30/lessons/12943?language=javascript
<br> https://in-future.tistory.com/30 copy
<script>

function solution(num) {
    var answer = 0;
    
    for(var i = 0; i < 500; i++) { // 500번까지만 반복
        if(num != 1) { // 1이 아닌 경우
            num = num % 2 == 0 ? num / 2 : num * 3 + 1; // 계산진행
        } else { // 1인 경우
            return answer = i; // 현재 횟수를 출력
        }
    }
    
    return answer = -1; // 500번을 실행했지만 return된 값이 없는 경우
}
console.log(solution(6));
</script>
</body>
</html>