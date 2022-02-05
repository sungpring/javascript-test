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
https://programmers.co.kr/learn/courses/30/lessons/60057?language=javascript<br>
https://velog.io/@sqaurelu/ALGO-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EB%AC%B8%EC%9E%90%EC%97%B4-%EC%95%95%EC%B6%95%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8-javascript -참고 <br>
<script>
function solution(s) {
    let min_len = s.length;
    
    for (let i = 1; i <= parseInt(s.length / 2); i++) { //parseInt 10.2 이런식이면 10으로 변환해줌
        let prev = s.substr(0, i);// aabbaccc 가 예라면 a, aa, aab 이런식으로 prev 값이 설정
        //substr(0,1) (0,2) 이런 구성이면 a, aa 이렇게 자름
        //substr(2,2) (4,2) 이런 구성이면 bb ac 이렇게 자름
        let cnt = 1;
        let tmp_str = '';
        
        for (let k = i; k < s.length; k += i) {
        	console.log("k "+k+"/ i "+i);
            const cur = s.substr(k, i); // 1,1 / 2,1 / 3,1... / 2,2 / 4,2 / 6,2... / 3,3...
            // k가 2부터 시작하고 i가 2부터 시작한다면 prev 는 aa로 처음을 시작하고, cur는 bb가 된다.
            if (prev === cur) cnt++; //앞 문자열과 뒷 문자열이 같다면 cnt ++ 해줌
            else {
                tmp_str += (cnt > 1 ? String(cnt) : '') + prev; //같지 않다면 tmp_str 에 cnt를 앞에다 주고 문자열을 뒤에 깔아야하므로 prev 를 붙여줌
                cnt = 1; // 그리고 다시 cnt 를 초기화해줌
                prev = cur; // 그리고 다시 앞과 뒤를 비교해야하므로 prev 에 cur 현재값을 넣어준다.
            }
        }
        tmp_str += (cnt > 1 ? String(cnt) : '') + prev;
        min_len = Math.min(min_len, tmp_str.length) //min_len, tmp_str.length 둘 중 작은 값을 반환한다.
    }
    return min_len;
}
console.log(solution('aabbaccc')); //return 7 ; 
//console.log(solution('abcabcdede')); //return 8 ; 
</script>
</body>
</html>