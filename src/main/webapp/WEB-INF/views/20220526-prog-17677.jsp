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
https://programmers.co.kr/learn/courses/30/lessons/17677?language=javascript<br>
https://programmers.co.kr/questions/27720 - 복사
<script type="text/javascript">
/*
function solution(str1, str2) {
    
    let tmpArr1 = [];
    let tmpArr2 = [];

	let fillterStrArr = [" ","~","!","@","#","$","%","^","&","*","(",")","-","+","=","/","?"
		,"0","1","2","3","4","5","6","7","8","9"];
    str1.toLowerCase().split('').forEach((item, index, arr)=>{
        if(index+1 === str1.length || fillterStrArr.includes(item) || fillterStrArr.includes(arr[index+1])) return;
    	tmpArr1.push(item+arr[index+1]);
    });
  	
    str2.toLowerCase().split('').forEach((item, index, arr)=>{
        if(index+1 === str2.length || fillterStrArr.includes(item) || fillterStrArr.includes(arr[index+1])) return;
    	tmpArr2.push(item+arr[index+1]);
    });

	let sumArr = [];
    for(let i=0; i<tmpArr1.length; i++){
    	for(let j=0; j<tmpArr2.length; j++){
    		if(tmpArr1[i] === tmpArr2[j]) {
    			sumArr.push(tmpArr1[i]);
    			tmpArr1.splice(i, 1);
    			tmpArr2.splice(j, 1);
    		    i--; j--;
            }
        }
    }
    
    let allSumArr = [...sumArr, ...tmpArr1, ...tmpArr2]
    let result = Math.floor((sumArr.length / allSumArr.length) * 65536);
   	
    return isNaN(result) ? 65536 : result;
}
*/
function solution(str1, str2) {
    var answer = 0;
    let compare1 = verifiedSlices(str1), compare2 = verifiedSlices(str2)
    const union = new Set([...compare1, ...compare2])
    let multiIntersectionLen = 0, multiUnionLen = 0
    for (const slice of union) {
        const compare1Count = compare1.filter(x => x === slice).length,
            compare2Count = compare2.filter(x => x === slice).length
        multiIntersectionLen += Math.min(compare1Count, compare2Count)
        multiUnionLen += Math.max(compare1Count, compare2Count)
    }
    answer = multiUnionLen === 0 ? 65536 : Math.floor(multiIntersectionLen / multiUnionLen * 65536)
    return answer;
}

function verifiedSlices(str) {
    const onlyAlphabet = /[a-zA-Z]{2}/
    let result = []
    for (let i = 0; i < str.length - 1; i++) {
        const slice = str.slice(i, i + 2)
        if (onlyAlphabet.test(slice)) result.push(slice.toLowerCase())
    }
    return result
}
console.log(solution("E=M*C^2","e=m*c^2"));
</script>
</body>
</html>