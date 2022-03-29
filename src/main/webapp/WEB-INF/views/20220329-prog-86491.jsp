<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
https://programmers.co.kr/learn/courses/30/lessons/86491?language=javascript<br>
https://tobegood.tistory.com/entry/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EC%B5%9C%EC%86%8C%EC%A7%81%EC%82%AC%EA%B0%81%ED%98%95-JavaScript copy
<script>
function solution(sizes) {
    /*
    let cntLeft=0;
    let cntRight=0;
    
    for(let i=0; i<sizes.length; i++){
    	let tmpArr = sizes[i];
    	if(tmpArr[0] > cntLeft) cntLeft=tmpArr[0];
    	if(tmpArr[1] > cntRight) cntRight=tmpArr[1];
    }
    console.log(cntLeft);
    console.log(cntRight);
    return cntLeft*cntRight;
    */
	let big = 0;
	  let small = 0;
	  
	  for(let len of sizes) {
	  //len[0]이 가로길이, len[1]이 세로길이 이다.
	    if(len[0] > len[1]){ // 가로가 더 긴 경우
	      if(big < len[0]) big = len[0];
	      if(small < len[1]) small = len[1];
	    }
	    else { // 세로가 더 긴 경우
	      if(big < len[1]) big = len[1];
	      if(small < len[0]) small = len[0];
	    }
	  };
	  return big * small;
}
console.log(solution([[60, 50], [30, 70], [60, 30], [80, 40]]));
</script>
</body>
</html>