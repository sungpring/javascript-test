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
https://kis6473.tistory.com/167 - 참조<br>

<script>
function solution(record) {
 	/*
  	let resultArr = [];
  	let resultMap = {};
  	for(let i=0; i<record.length; i++){
  		let recordSplitArr = record[i].split(" ");
  		//enter 와 change 가 들어오면 배열[1]이 같은게 있다면 닉네임이 변화되도록 해야함
  		if(recordSplitArr[0] == "Enter" || recordSplitArr[0] == "Change"){
  			const arr2 = {};
  			arr2[recordSplitArr[2]] = recordSplitArr[0];
  			resultMap[recordSplitArr[1]]=arr2; // uid1234: {Prodo: 'Enter'}
  			//Object.keys(resultMap).includes(recordSplitArr[1]) ? : 
  		}else{
  			const arr2 = {};
  			const valueOfKey = Object.keys(resultMap[recordSplitArr[1]])[0];
  			arr2[valueOfKey] = "Leave";
  			console.log(arr2);
  			console.log(resultMap[recordSplitArr[1]][valueOfKey]); //잘안되는 중
  			resultMap[recordSplitArr[1]][valueOfKey]=arr2;
  		}
  	}
    console.log(resultMap);
    */
    
    let result = [];
    
    let arr = [];
    let arrMap = {};
    for(let i=0; i<record.length; i++){
    	let recordSplitArr = record[i].split(" ");
    	let arrInside = [];
    	
    	if(recordSplitArr[0] == "Leave") { arrInside.push(recordSplitArr[1]); arrInside.push("님이 나갔습니다."); arr.push(arrInside); continue;} 
    	if(recordSplitArr[0] == "Enter") { arrInside.push(recordSplitArr[1]); arrInside.push("님이 들어왔습니다."); arr.push(arrInside);} 
    	
    	
    	arrMap[recordSplitArr[1]] = recordSplitArr[2];
    }
    
    for(let i=0; i<arr.length; i++){
    	result.push(arrMap[arr[i][0]]+arr[i][1]);
    }
    return result;
   
    /*
   	let answer = []; 
   	const map = new Map(); 
   	
   	for (let i = 0; i < record.length; ++i) { 
   		const [state, uid, name] = record[i].split(' '); // Enter(state) uid1234(uid) Muzi(name) 
   		if (state == 'Leave') { 
   			answer.push([uid, '님이 나갔습니다.']); 
   			continue; 
   		} 
   		if (state == 'Enter') {
   			answer.push([uid, '님이 들어왔습니다.']); 
   		} 
   		map.set(uid, name); //{ uid1234 : Muzi }
   	} 
    console.log(answer);
   	return answer.map(ele => map.get(ele[0]) + ele[1]); //ele[0] = uid1234  /  ele[1] = 님이 나갔습니다.
    */
    /*
    	["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]
    */
    
}
let record = ["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"];
console.log(solution(record));
</script>
</body>
</html>