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
https://programmers.co.kr/learn/courses/30/lessons/77486?language=javascript<br>
<script>
function solution(enroll, referral, seller, amount) {
    var answer = [];
    /*
		1. 트리구조 부터 짠다.
		2. 맨 아래서부터 시작해준다. for문을 거꾸로 돌린다.
		3. 맨 아래의 연산이 끝난다면 tree 구조해서 날린다. 
		4. 끝난 연산을 어딘가에 enroll 순서대로 저장해준다.
	*/
	let jsonTree = new Object();
    let calculatedJsonTree = new Object();
    for(let i=0; i<enroll.length; i++){
    	jsonTree[enroll[i]]=referral[i];
    	calculatedJsonTree[enroll[i]]=0;
    }
  
    /*	jsonTree
    	edward: "mary"
		emily: "mary"
		jaimie: "mary"
		john: "-"
		mary: "-"
		sam: "edward"
		tod: "jaimie"
		young: "edward"
    */
    
    let jsonTreeAmount = [];
    for(let i=0; i<seller.length; i++){
    	let data = new Object();
    	data[seller[i]] = amount[i];
    	jsonTreeAmount.push(data);
	}

    /*jsonTreeAmount
		0: {young: 12}
		1: {john: 4}
		2: {tod: 2}
		3: {emily: 5}
		4: {mary: 10}
    */
  
    let recursiveFunc = function(name, amount){
    	upAmount = Math.floor(amount * 1/10);
    	myAmount = amount - upAmount;
    	if(jsonTree[name] !== "-" && amount !== 0){
    		calculatedJsonTree[name] += myAmount;
    		recursiveFunc(jsonTree[name] , upAmount);
    	}else{
    		calculatedJsonTree[name] += myAmount;
    	}
    }
	
    for(let i=0; i<jsonTreeAmount.length; i++){
    	//if(typeof jsonTreeAmount[i][enroll[i]] !== 'undefined'){ //재귀함수 이용
    	let key = Object.keys(jsonTreeAmount[i]);
    	recursiveFunc(key, (jsonTreeAmount[i][key]) * 100);
    	//}
    }
    
    for(let i=0; i<enroll.length; i++){
    	answer.push(calculatedJsonTree[enroll[i]]);
    }
    
    return answer;
}

//칫솔 하나당 이득은 100원 , 1원 단위는 절삭한다. ex) 1원의 10%는 0.1원인데 이건 없는걸로 치고 해당 이익을 당사자가 모두 가진다.
let enroll = ["john", "mary", "edward", "sam", "emily", "jaimie", "tod", "young"];
let referral = ["-", "-", "mary", "edward", "mary", "mary", "jaimie", "edward"];
let seller = ["young", "john", "tod", "emily", "mary"];
let amount = [12, 4, 2, 5, 10];
console.log(solution(enroll,referral,seller,amount)); //[360, 958, 108, 0, 450, 18, 180, 1080]
</script>
</body>
</html>