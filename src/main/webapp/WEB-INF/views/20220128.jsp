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
https://programmers.co.kr/learn/courses/30/lessons/81301?language=javascript<br>
<script>

function solution(s) {
	/*
	   let listStr = ['zero','one','two','three','four','five','six','seven','eight','nine'];
	    let listNum = [0,1,2,3,4,5,6,7,8,9]; 
	    
	    let resultStr = s;
	    
		for(let i=0; i<listStr.length; i++){
			let myWord = listStr[i];
			resultStr = resultStr.replace(listStr[i],listNum[i]);
		}    
	    return Number(resultStr);
	} 70점 짜리
	*/

	let answer = 0;
    
    s = s.replace(/zero/g, 0);
    s = s.replace(/one/g, 1);
    s = s.replace(/two/g, 2);
    s = s.replace(/three/g, 3);
    s = s.replace(/four/g, 4);
    s = s.replace(/five/g, 5);
    s = s.replace(/six/g, 6);
    s = s.replace(/seven/g, 7);
    s = s.replace(/eight/g, 8);
    s = s.replace(/nine/g, 9);
    
    answer = Number(s);
    return answer;
}
let s ="one4seveneight";
console.log(solution(s));
</script>
</body>
</html>