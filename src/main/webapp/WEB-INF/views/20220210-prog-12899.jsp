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
https://programmers.co.kr/learn/courses/30/lessons/12899?language=javascript<br>
https://beop07.tistory.com/27 - 참조<br> 
<script>
function solution(n) {
	let answer = '';
    let rule = [4,1,2]; //3진법
    while(n>0){
        answer = rule[n%3] + answer;
        n = parseInt((n-1)/3);
    }
    return answer;
}
//test --------------------

function test() {}

test('simple', () => {
  expect(solution(1)).toBe('12');
  expect(solution(2)).toBe('2');
  expect(solution(3)).toBe('4');
  expect(solution(4)).toBe('11');
  expect(solution(5)).toBe('12');
  expect(solution(6)).toBe('14');
  expect(solution(7)).toBe('21');
  expect(solution(8)).toBe('22');
  expect(solution(9)).toBe('24');
  expect(solution(10)).toBe('41');
  expect(solution(11)).toBe('42');
  expect(solution(12)).toBe('44');
  expect(solution(13)).toBe('111');
});
test();
console.log(solution(13));
</script>
</body>
</html>