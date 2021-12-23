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
https://programmers.co.kr/learn/courses/30/lessons/42578?language=javascript
<script>

var clo = [["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"], ["red_pants", "pants"]];

/*
function solution(clothes) {
    const category = [];
    const cnt = [];

    clothes.forEach(cloth => {
       if(category.indexOf(cloth[1]) === -1) {
           const idx = category.length;
           
           category[idx] = cloth[1];
           cnt[idx] = 1;
           console.log(category[idx]);
       } else {
           const idx = category.indexOf(cloth[1]);
           cnt[idx] += 1;
           console.log(cnt[idx]);
       }
    });
	console.log(cnt);
    //마지막 -1은 최소한 1개의 아이템이라도 걸쳐야하니 아무것도 안 입은 경우를 빼주는 것이다.
    return cnt.reduce((acc, curr) => acc * (curr + 1), 1) - 1;

}
*/

function solution(clothes) {
    let answer = 1;
    let obj = {};
    const len = clothes.length;
    
    for(let i = 0; i < len; i++) {
        obj[clothes[i][1]] = (obj[clothes[i][1]] || 1) + 1;
    }    
    
    for(let key in obj) {
        answer *= obj[key];
    }
    
    return answer - 1;
}
console.log(solution(clo));
</script>
</body>
</html>