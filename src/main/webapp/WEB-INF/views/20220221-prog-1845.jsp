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
https://programmers.co.kr/learn/courses/30/lessons/1845?language=javascript<br>
<script>
function solution(nums) {
	/*
		논리구성
		1.nums / 2 해주고 반내림해준다. Math.floor(nums.length);
		2.nums 에서 나오는 값을 map 형태로 넣어준다.
		3.map 의 key 개수를 세어 주고 key 개수가 nums/2 보다 크다면 nums/2 값을 반환한다.
	*/
	/*
		 const max = nums.length / 2;
		  const arr = [...new Set(nums)];
		
		  return arr.length > max ? max : arr.length
		위는 내가 한 코드보다 이쁜 코드
	*/
  
	let maxNum = Math.floor(nums.length/2);
	let mapNum = {};
	nums.map(x=>{
		mapNum[x] === undefined ? mapNum[x]=1 : mapNum[x]+=1
	});
	
    return Object.keys(mapNum).length > maxNum ? maxNum : Object.keys(mapNum).length;
}
console.log( solution([3,3,3,2,2,4]	) ); //기대값 3
</script>

</body>
</html>