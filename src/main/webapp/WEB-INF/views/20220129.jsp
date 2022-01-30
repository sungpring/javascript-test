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

function solution(numbers, hand) {
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
	
	
	let leftHandLocation = "*";
	let rightHandLocation = "#";
	
	var moveDistanceCal = function (arr) {
		// 2, 5, 8, 0 은 왼손 오른손 다 가능함 // 
		let resultVal = "";
		let arrStr=arr.map(i=>String(i));
		arrStr.forEach(e => {
			//console.log("Left: "+leftHandLocation+" : Right: "+rightHandLocation);
				if(e == "1" ||e == "4"||e == "7"){
					resultVal+="L";
					leftHandLocation = e;
				}else if(e == "2" ||e == "5"||e == "8"||e == "0"){
					let leftVal=Math.abs(num[leftHandLocation]["x"]-num[e]["x"])+Math.abs(num[leftHandLocation]["y"]-num[e]["y"]);
					let rightVal=Math.abs(num[rightHandLocation]["x"]-num[e]["x"])+Math.abs(num[rightHandLocation]["y"]-num[e]["y"]);
					
					leftVal<rightVal ? (resultVal+="L", leftHandLocation = e): '' ;
					leftVal>rightVal ? (resultVal+="R", rightHandLocation = e): '' ;
					(leftVal==rightVal && hand == "left" ) ? (resultVal+="L", leftHandLocation = e): '' ;
					(leftVal==rightVal && hand == "right" ) ? (resultVal+="R", rightHandLocation = e): '' ;
					
				}else if(e == "3" || e == "6"|| e == "9"){
					resultVal+="R";
					rightHandLocation = e; 
				} 
			}
		);
	    return resultVal;
	}
	
    return moveDistanceCal(numbers);
}

console.log(solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2],"left"));
</script>
</body>
</html>