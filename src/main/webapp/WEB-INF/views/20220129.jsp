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
https://programmers.co.kr/learn/courses/30/lessons/67256?language=javascript<br>
<script>

function solution(s) {
	var answer = 0;
	/*				  L			  R
		1 2 3		[1,4] [2,4] [3,4] x,y축으로
		4 5 6  - >  [1,3] [2,3] [3,3]
		7 8 9		[1,2] [2,2] [3,2]
		* 0 #		[1,1] [2,1] [3,1]
		
		1.이동할 거리 계산 현재 x와 이동할곳 x를 빼주고 / 현재 y 에서 이동할 곳 y를 빼준다 
		2.예를들어 * 에서 숫자 1로 이동한다면 x : 현재(1) 이동할 곳(1) / y: 현재(1) 이동할 곳 (4)
		3. 1-1 = 0 / 1-4 = -3
		4.
		var num=-1;
		num = Math.abs(num);
		위의 함수로 감싸주어서
		x 와 y 값을 더해주면 됨.
	
	
	*/
	let leftHandLocation;
	let rightHandLocation;
	
	let numLocationList = [
		[1,4],[2,4],[3,4],
		[1,3],[2,3],[3,3],
		[1,2],[2,2],[3,2],
		[1,1],[2,1],[3,1]
	];
	
	var moveDistanceCal = function () {
		// 2, 5, 8, 0 은 왼손 오른손 다 가능함 // 
		
	    return 'A function expression';
	}
	
	let num = {
		"1":{"x":1,"y":4},
		"2":{"x":2,"y":4},
		"3":{"x":3,"y":4},
		
		"4":{"x":1,"y":3},
		"5":{"x":2,"y":3},
		"6":{"x":3,"y":3},
		
		"7":{"x":1,"y":2},
		"8":{"x":2,"y":2},
		"9":{"x":3,"y":2},

		"*":{"x":1,"y":1},
		"0":{"x":2,"y":1},
		"#":{"x":3,"y":1}
	};

	
	console.log(num);
	
    return answer;
}
let s ="one4seveneight";
console.log(solution(s));
</script>
</body>
</html>