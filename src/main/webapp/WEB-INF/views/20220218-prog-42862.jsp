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
https://programmers.co.kr/learn/courses/30/lessons/42862?language=javascript<br>
https://velog.io/@sqaurelu/ALGO-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EC%B2%B4%EC%9C%A1%EB%B3%B5%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8-javascript - 참고
<script>
function solution(n, lost, reserve) {
	
	/* 좋은코드
		function solution(n, lost, reserve) {      
		    return n - lost.filter(a => {
		        const b = reserve.find(r => Math.abs(r-a) <= 1)
		        if(!b) return true
		        reserve = reserve.filter(r => r !== b)
		    }).length
		}
	*/
	
	let clothGroup = new Array(n).fill(1); //모두 옷이 있다 가정
	
	for(let i=0; i<lost.length; i++){
		clothGroup[lost[i]-1]--; //옷 없으면 그룹에서 제거
	}
	
	for(let i=0; i<reserve.length; i++){
		clothGroup[reserve[i]-1]++; //옷이 있다면 추가
	}
	
	for(let i=0; i<clothGroup.length; i++){
		if(clothGroup[i] === 0){
			if(clothGroup[i-1] === 2) {(clothGroup[i]++,clothGroup[i-1]--)}
			else if(clothGroup[i+1] === 2) {(clothGroup[i]++,clothGroup[i+1]--)}
		}
	}
	
	return clothGroup.length - (clothGroup.filter(element => element == 0 )).length;
	/*
    let nFixed=[];
    for(let i=0; i<n; i++){
    	nFixed[i] =i+1; //모든 구성원
    }
   
    nFixed = nFixed.filter(x => !lost.includes(x)); //모든 구성원과 잃어버린 구성원 비교후 제거
    nFixed = [...nFixed , ...reserve];
    nFixed = nFixed.filter((element, index) => {
        return nFixed.indexOf(element) === index;
    });
    
    nFixed.sort();

    for(let i=0; i<lost.length; i++){
    	let tmpNum = lost[i];
    	if(reserve.includes(tmpNum-1)){
    		nFixed.push(tmpNum);
    	}else if(reserve.includes(tmpNum+1)){
    		nFixed.push(tmpNum);
    		if(lost[i+1] == lost[i]+2) i++;
    	}
    }
    
    nFixed.sort();
    console.log(nFixed);
    return nFixed.length;
    */
}
//console.log(solution(5,[2, 4],[1, 3, 5]));//5
console.log(solution(5,[2, 4],[3]));//4
//console.log(solution(3,[3],[1]));//2
</script>
</body>
</html>