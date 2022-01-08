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
https://programmers.co.kr/learn/courses/30/lessons/42587?language=javascript<br>
<script>
function solution(priorities, location) {
    let max;
    let cnt = 0;
    
    while(true) {
      	max = Math.max.apply(null, priorities); //max = Math.max.apply(null, priorities); priorities 배열에서 가장 높은 수를 빼낸다.
        let n = priorities.shift(); //맨 앞의 요소를 빼낸다
        
        if (n === max) { //꺼낸 요소가 max와 같으면
            cnt++; //pop하므로 cnt 1증가
            if (location === 0) { //만약 location이 0이되면
                return cnt; //cnt를 return
            }
        } else { //꺼낸 요소가 max와 다르면
            priorities.push(n); //배열 맨 끝에 꺼낸 요소를 추가
        }
        location--; //한 차례마다 location값을 계속 줄여나간다
        
        if (location == -1) { //만약 -1이 되어버리면 다시 배열의 맨끝으로 보낸다
            location = priorities.length - 1;
        }
    }
}
let abc=[2, 1, 3, 2];
let lo=2;
console.log(solution(abc,lo));
</script>
</body>
</html>