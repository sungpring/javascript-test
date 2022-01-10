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
https://programmers.co.kr/learn/courses/30/lessons/42888?language=javascript<br>
<script>
function solution(record) {
    var answer = [];
    
    for(let i=0; i<record.length; i++){
    	let recordArr=record[i].split(' ');
    	switch(recordArr[0]){
    		case 'Enter':
    			answer.push(recordArr[2]+"님이 들어왔습니다.");
    			break;
    		case 'Leave':
    			for(let j=record.length; j>-1; j--){
    				console.log(j);
    				console.log(record[j]);
    				let recordArrLeave = record[j].split(' ');
    				if(recordArr[1] == recordArrLeave[1]){
    					answer.push(recordArr[2]+"님이 나갔습니다.");
    					break;
    				}
    			}
    			break;
    		case 'Change':
    			
    			break;
    	}
    }
    
    return answer;
}
let record =["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"];
console.log(solution(record));
//["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]
</script>
</body>
</html>