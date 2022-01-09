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
https://programmers.co.kr/learn/courses/30/lessons/72410?language=javascript<br>
<script>
function solution(new_id) {
    var answer = '';
    
    answer=new_id.toLowerCase() //대문자->소문자
    .replace(/[`~!@#$%^&*()|+\=?;:'",<>\{\}\[\]\\\/ ]/gim,'')
    .replace(/\.{2,}/g,'.')
    .replace(/^\./,'').replace(/\.$/,'');
   
    if(answer===''){
    	answer='a';
    }
    
    answer=answer.substr(0,15).replace(/\.$/,'');
    
    let lastStr=answer.charAt(answer.length-1);
	while(answer.length <3){
		if (answer.length == 3) {
		      break;
		}
		answer += lastStr;
	}
    
    return answer;
}
//let new_id = "...!@BaT#*..y.abcdefghijklm";
//let new_id ="z-+.^.";
//let new_id ="=.=";
let new_id ="123_.def";
console.log(solution(new_id));

//다른사람 풀이
function solution2(new_id) {
    const answer = new_id
        .toLowerCase() // 1
        .replace(/[^\w-_.]/g, '') // 2
        .replace(/\.+/g, '.') // 3
        .replace(/^\.|\.$/g, '') // 4
        .replace(/^$/, 'a') // 5
        .slice(0, 15).replace(/\.$/, ''); // 6
    const len = answer.length;
    return len > 2 ? answer : answer + answer.charAt(len - 1).repeat(3 - len);
}
</script>
</body>
</html>