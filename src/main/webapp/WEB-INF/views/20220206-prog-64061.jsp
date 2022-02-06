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
https://programmers.co.kr/learn/courses/30/lessons/64061?language=javascript<br>
<script>
function solution(board, moves) {
	/*
	[0,0,0,0,0],
	[0,0,1,0,3],
	[0,2,5,0,1],  --> [1,5,3,5,1,2,1,4]  -> 4
	[4,2,4,4,2],  --> [4,3,{1,1},3,2,{0},4]
	[3,5,1,3,1]
	*/
    var answer = 0;
	
	let arr = Array.from(Array(board.length), () => new Array(board.length)); //5 X 5 배열 선언
	
	for(let i=0; i<board.length; i++){
		for(let j=0; j<board.length; j++){
			if(board[j][i] != 0) arr[i][j]=board[j][i];
		}
	}
	console.log(arr);
	for(let i=0; i<moves.length; i++){
		moves[i]
	}
	
    return answer;
}
console.log( solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]],[1,5,3,5,1,2,1,4]));
</script>
</body>
</html>