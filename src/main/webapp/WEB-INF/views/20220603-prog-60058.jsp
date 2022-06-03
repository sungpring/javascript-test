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
https://programmers.co.kr/learn/courses/30/lessons/60058?language=javascript<br>
https://velog.io/@swanious/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EA%B4%84%ED%98%B8-%EB%B3%80%ED%99%98-javascript copy
<script type="text/javascript">
/*
function solution(p) {
    var answer = '';

	if(p.length === 0 ) return '';
    
    let first = second = 0;
	let firstStr = secondStr = '';
	
    for(let i=0; i<p.length; i++){
    	let indexStr = p.charAt(i);
    	indexStr === '(' ? first += 1 : second += 1;
		firstStr += indexStr;
		if(first !== 0 && second !== 0 && first === second){
			secondStr += p.substring(i+1 , p.length);
			break;
		}
				
    }

    function recursiveFunc(){

    }
		
	console.log(firstStr);
	console.log(secondStr);
	
    return answer;
}
*/
function solution(p) {
    var answer = '';
    var open = 0;
    var close = 0;
    
    // 1. 재귀 탈출 조건
    if (!p) return ''; 
    
    for (let i=0; i<p.length; i++) {
        if (p[i] === '(') open++
        else close++
        
        // 균형일 때 "올바른 괄호 문자열"인지 아닌지 판단
        if (open === close) {
            // 2, 3, 3-1
            if (check(p.slice(0, i+1))) {
                answer = p.slice(0, i+1) + solution(p.slice(i+1));
                return answer;
            } else {
                // 4-1, 4-2, 4-3
                answer = '(' + solution(p.slice(i+1)) + ')';
                
                // 4-4
                for (let j=1; j<i; j++) {
                    if (p[j] === '(') {
                        answer = answer + ')'
                    } else {
                        answer = answer + '('
                    }
                }
                // 4-5
                return answer;
            }
        }
    }    
}

// 올바른 괄호 문자열인지 판단하는 함수
function check(p) {
    var stack = [];
    for (let i = 0; i<p.length; i++) {
        if (p[i] === '(') stack.push('(')
        else {
            if (stack.length === 0) return false;
            stack.pop();
        }
    }
    return true;
}

console.log( solution("()))((()"));
</script>
</body>
</html>