<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
https://programmers.co.kr/learn/courses/30/lessons/72411?language=javascript<br>

https://sustainable-dev.tistory.com/155 <br>
<script type="text/javascript">
function solution(orders, course) {
    let answer = [];
    const list = {};
    
    const getCombination = (arr, n) => {
        const result = [];
        if(n === 1) return arr.map(e => [e]);
        
        arr.forEach((e, idx, origin) => {
            const rest = origin.slice(idx + 1);
            const combinations = getCombination(rest, n-1);
            const attached = combinations.map(combi => [e, ...combi]);
            result.push(...attached);
        });
        return result;
    }
    
    orders.map((order) => {
        const orderArr = order.split('').sort();
        //만들수 있는 조합 메뉴의 수는 2부터 시작해서 최대 주문된 구성 수까지
        for(let i = 2; i <= orderArr.length; i++) {
        	//만약 조합메뉴의 수가 스카피가 원하는 조합메뉴 수와 일치하지 않는다면 넘어감
            //구해봤자 스카피는 원하지 않기 때문
            if(!course.includes(i)) continue;
            const orderCombis = getCombination(orderArr, i);
            //list라는 Object에 key = 조합 value = 같은 조합이 주문된 수를 넣어줌
            orderCombis.map(orderCombi => {
                const string = orderCombi.join('');
                list[string] = list[string]? list[string] + 1 : 1;
            });
        };
    });
    
    let listArr = Object.entries(list);
    course.map(c => {
    	//스카피가 원하는 조합메뉴 수와 일치하는 조합과 최소 2번 이상 주문된 조합을 필터링해준다.
        const candidates = listArr.filter(e => e[0].length === c && e[1] > 1);
        if(candidates.length > 0) {
        	//해당하는 조합에서 가장 많이 주문된 주문 수 구하기
            let max = Math.max(...candidates.map(e => e[1]));
            //가장 많이 주문된 조합을 answer 배열에 push 해줌
            candidates.map(e => {
                if(e[1] === max) answer.push(e[0]);
            });
        }
    })
    //마지막으로 알파벳 오름차순으로 정렬해서 return 하기
    return answer.sort();
};
console.log(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"],[2,3,4]));
</script>
</body>
</html>