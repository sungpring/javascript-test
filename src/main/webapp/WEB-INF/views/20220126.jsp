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
https://programmers.co.kr/learn/courses/30/lessons/92334?language=javascript<br>
https://velog.io/@dnjsdud2257/%EC%BD%94%EB%94%A9%ED%85%8C%EC%8A%A4%ED%8A%B8-%EC%8B%A0%EA%B3%A0-%EA%B2%B0%EA%B3%BC-%EB%B0%9B%EA%B8%B0-JavaScript 참조<br>
<script>
function solution(id_list, report, k) {
	const answer = new Array(id_list.length);
	answer.fill(0) 
	const report_list = {} //
	
	
	id_list.map((user)=>{
	    report_list[user] = [] //key로 userid를 value로 빈 배열을 가지는 객체
	})
	
	report.map((user)=>{
	    const [user_id, report_id] = user.split(' ')
	    if(!report_list[report_id].includes(user_id)){
	        report_list[report_id].push(user_id)
	    }        
	})
	
	for(const key in report_list){
	    if(report_list[key].length >= k){ //이용정지 유저
	        report_list[key].map((user)=>{
	            answer[id_list.indexOf(user)] += 1
	        })
	    }
	}
    /*
    //중복 신고 제거 로직
    let reportList = [];
    report.forEach((e)=>{
    	if(!reportList.includes(e)){
    		reportList.push(e);
    	}
    });
    //중복 신고 제거 로직 end
    
    let reportPerson= []; //신고한 사람
    let reportedPerson= []; //신고당한 사람
	for(let val of reportList){
		reportPerson.push(val.split(' ')[0]);
		reportedPerson.push(val.split(' ')[1]);
    }
	
    for(let i=0; i<id_list.length; i++){
    	val
    }
	
	console.log(reportPerson);
	console.log(reportedPerson);
  	*/
    return answer;
}
let id_list = ["muzi", "frodo", "apeach", "neo"];
let report = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"];
let k = 2;
// var result = [2,1,1,0]; 
console.log(solution(id_list, report, k));
</script>
</body>
</html>