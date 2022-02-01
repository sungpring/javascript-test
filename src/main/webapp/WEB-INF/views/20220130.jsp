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
https://github.com/foreverfl/ProblemSolving/blob/master/src/Programmers_Copied/Copied_Programmers_92334_TakingResultOfReport.java - 참조<br>
<script>
function solution(id_list, report, k) {
	
	let reportNoDupl = report.filter((element, index) => {
	    return report.indexOf(element) === index;
	});

	let reportMap = {};
	
	for(let i = 0; i<reportNoDupl.length; i++){
		let arrReport = reportNoDupl[i].split(" ");
		let reporter = arrReport[0];
		let target = arrReport[1];
		
		if(reportMap[target]){
			reportMap[target].push(reporter);
		}else{
			let list = [];
			list.push(reporter);
			reportMap[target] = list;
		}
	}
	
	/*	reportMap
		{frodo: Array(2), neo: Array(2), muzi: Array(1)}
		frodo: (2) ['muzi', 'apeach']
		muzi: ['apeach']
		neo: (2) ['frodo', 'muzi']
	*/
	
	let result = {};
	for (const item of id_list) {
		result[item] = 0; // result {muzi: 0, frodo: 0, apeach: 0, neo: 0}
	}
	
	for (const item in reportMap){
		if(reportMap[item].length >= k ){
			for(const itemList of reportMap[item]){
				result[itemList]++;
			}
		}
	}
	
	return Object.values(result);
}
//console.log(solution(["con", "ryan"],["ryan con", "ryan con", "ryan con", "ryan con"],3));
console.log(solution(["muzi", "frodo", "apeach", "neo"],["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"],2)); // [2,1,1,0]
</script>
</body>
</html>