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
https://programmers.co.kr/learn/courses/30/lessons/76501?language=javascript<br>
<script>
function solution(absolutes, signs) {
    var answer = 0;
    
    for(let i=0; i<absolutes.length; i++){
    	signs[i] == false ? answer+=parseInt('-'+absolutes[i]) : answer+=absolutes[i];
    	//  signs[i] ? answer += absolutes[i] : answer -= absolutes[i] 다른사람 풀이
    }
    
    return answer;
}
let absolutes = [4,7,12];
let signs = [true,false,true];
console.log(solution(absolutes, signs));
</script>
</body>
</html>