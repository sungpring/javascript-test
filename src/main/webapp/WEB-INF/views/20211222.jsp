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
https://programmers.co.kr/learn/courses/30/lessons/42576?language=javascript
<script>
function solution(participant, completion) {
    participant.sort();
    completion.sort();
    for(let i=0; i<participant.length; i++){
        if(participant[i] != completion[i]){
            return participant[i];
        } 
    }
}
let one=["leo", "kiki", "eden"];
let two=["eden", "kiki"];
console.log(solution(one,two));
</script>
</body>
</html>