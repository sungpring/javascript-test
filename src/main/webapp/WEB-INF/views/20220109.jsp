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
https://programmers.co.kr/learn/courses/30/lessons/77484?language=javascript<br>
<script type="text/javascript">
function solution(lottos, win_nums) {
    const rank = [6, 6, 5, 4, 3, 2, 1];

    let minCount = lottos.filter(v => win_nums.includes(v)).length;
    //lottos 배열애서 filter 로 win_nums의 include 된 번호를 제거해주고 그에 따른 배열길이를 카운트 해줌
    let zeroCount = lottos.filter(v => !v).length;
	//(v => !v) 0, undefined, null 기타 등등의 값이 아닌 경우를 filter 로 제거해주고 0만 남은 배열의 길이를 카운트 해줌
    
    const maxCount = minCount + zeroCount;

    return [rank[maxCount], rank[minCount]];
}
let lottos=[44, 1, 0, 0, 31, 25];
let win_nums=[31, 10, 45, 1, 6, 19];
console.log(solution(lottos,win_nums));
</script>
</body>
</html>