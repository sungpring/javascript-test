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
<script>
function solution(progresses, speeds) {
	//https://programmers.co.kr/learn/courses/30/lessons/42586?language=javascript
			//https://miiingo.tistory.com/355 참고
	/*
		progresses에서 하나씩 뺀다음 100-progresses[i] 해주고
		(i는 1부터 시작)
		speeds 로 나누어 Math.ceil로 반올림해주고 100-progresses[i-1]/speeds[i-1] >= 100-progresses[i]/speeds[i] 와 같다면
		array[i-1]에 ++ 해준다. 
		같지 않다면 array[i] ++
	*/
	
	let answer = [0];
    let days = progresses.map((progress, index) => Math.ceil((100 - progress) / speeds[index])); // days 는 list
    let maxDay = days[0];// 처음 시작값을 maxDay 에 넣어줌
	
    for(let i = 0, j = 0; i< days.length; i++){
        if(days[i] <= maxDay) { //maxDay 가 days[i] 크거나 같다면 (첫번째는 무조건 +1이 되는 상태임)
            answer[j] += 1; //answer 리스트 j 번째에 +1 을 시켜준다. - 풀이 : maxDay 가 크거나 같아야 다음 작업이 진행되기 때문에
        } else {
            maxDay = days[i]; // maxDay 와 크거나 같지 않다면 다음 작업을 진행할 수 없으므로 다시 maxDay 를 day[i] 값으로 초기화하여 여기서부터 시작임.
            answer[++j] = 1; // maxDay 가 다시 초기화하여 시작이니 answer[] 다음값에 +1 을 시켜줌.
            //for 문 안에 있는 let i = 0, j = 0; i< days.length; i++ 이 부분이 인상적이다.
        }
    }

    return answer;
	
	/*
    var answer = [];
		
	if(progresses.length == 0){
		return [0];
	}
		
	let resultArr = new Array(); 
	let tmpArr = new Array(); 
	
	for(let i=0; i<progresses.length; i++){
		let beforeNum = Math.ceil((100-progresses[i])/(speeds[i]));
		let afterNum = Math.ceil((100-progresses[i+1])/(speeds[i+1]));
		tmpArr[0] == undefined ? tmpArr.push(beforeNum) : '';
		if(beforeNum >= afterNum){
			tmpArr.push(afterNum);
		}else{
			resultArr.push(tmpArr.length);
			tmpArr = new Array(); 
			//resultArr.push(cnt);
			//cnt=1;
			//console.log(resultArr[i-1]);
			//resultArr[i-1] == undefined ? resultArr[i-1] = 1 :  resultArr[i-1]=resultArr[i-1]+1;
			
		}
		//resultArr[i-1] = Math.ceil((100-progresses[i-1])/(speeds[i-1]));
		//resultArr.push(100-progresses[i-1]);
	}
	
    return resultArr;
    */
}
//console.log(solution([93, 30, 55],[1, 30, 5])); //[2, 1]
console.log(solution([95, 90, 99, 99, 80, 99],[1, 1, 1, 1, 1, 1])); //[1, 3, 2]
</script>
</body>
</html>