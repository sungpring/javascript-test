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
https://programmers.co.kr/learn/courses/30/lessons/42748?language=javascript<br>

<script>
function solution(array, commands) {
	/*
    var answer = [];
    let arrayNum = array.join("").replace(/\,/g,"");
    for(let i=0; i<commands.length; i++){
    	//commands[i][0] commands[i][1]
    	let val= arrayNum.substring(commands[i][0]-1,commands[i][1]).split("").sort((a,b)=> a-b);
    	answer.push(parseInt(val[commands[i][2]-1]));
    }
    return answer;
    */
    
    var answer = [];
    //let arrayNum = array.join("").replace(/\,/g,"");
    
    let resulTmp = [];
    for(let i=0; i<commands.length; i++){
    	let tmpArr = [];
    	for(let j=commands[i][0]-1; j<commands[i][1]; j++){
    		tmpArr.push(array[j]);
    	}
    	answer.push(tmpArr.sort((a,b)=> a-b)[commands[i][2]-1]);
    }
    
    return answer;
    
}
console.log(solution([1, 5, 2, 6, 3, 7, 4],[[2, 5, 3], [4, 4, 1], [1, 7, 3]])); //[5, 6, 3]
</script>
</body>
</html>