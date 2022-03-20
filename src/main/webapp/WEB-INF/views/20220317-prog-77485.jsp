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
https://programmers.co.kr/learn/courses/30/lessons/77485?language=javascript<br>
https://velog.io/@tunakim/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4JS-%ED%96%89%EB%A0%AC-%ED%85%8C%EB%91%90%EB%A6%AC-%ED%9A%8C%EC%A0%84%ED%95%98%EA%B8%B0
 - Copy
<script>
/*
function solution(rows, columns, queries) {
    var answer = [];
    
    let numsArr = Array.from(Array(rows), () => new Array(columns));
    for(let i=0, cnt=1; i<rows; i++){//행부터
    	for(let j=0; j<columns; j++){//열
    		numsArr[i][j] = cnt++;
    	}
    }

    
    let checkMinNum = function(arr){
   		let returnNum = 0;
   		
   		let allNumArr = [];
   		
   		//배열 깊은 복사
   		let tmpArr = [];
   		for(let i=0; i<rows; i++){
   			tmpArr.push(numsArr[i].slice());
   		}
   		//배열 깊은 복사 end
   		
   		let x1 = arr[0], y1 = arr[1], x2 = arr[2], y2 = arr[3]; //2254
   		
   		let moveRow=Math.abs(x1-x2)+1; //4
   		let moveColumn=Math.abs(y1-y2)+1; //3
   		//2 4
    	for(let i=y1; i<moveRow; i++){// 1: 오른쪽으로 / 위 직사각형
    		tmpArr[x1-1][i] = numsArr[x1-1][i-1];
    		allNumArr.push(numsArr[x1-1][i-1]);
   	    }
    	
    	for(let i=x1-1; i<=moveColumn; i++){// 2: 아래로 / 오른쪽 직사각형
    		tmpArr[i+1][y2-1] = numsArr[i][y2-1]; // tmpArr[2][3] tmpArr[3][3] tmpArr[4][3]이렇게 바꿔줘야함
    		allNumArr.push(numsArr[i][y2-1]);
   	    }
    	
    	for(let i=y2-1; i>y1-1; i--){// 3: 왼쪽 / 아래 직사각형
   													// numsArr[4][3] numsArr[4][2]
    		tmpArr[x2-1][i-1] = numsArr[x2-1][i]; // tmpArr[4][2] tmpArr[4][1] 이렇게 바꿔줘야함
    		allNumArr.push(numsArr[x2-1][i]);
   	    }
    	
    	for(let i=x2-1; i>x1-1; i--){// 4: 위로 / 왼쪽 직사각형
    		tmpArr[i-1][y1-1] = numsArr[i][y1-1]; 
    		allNumArr.push(numsArr[i][y1-1]);
   	    }
    	
    	numsArr = tmpArr;
    	console.log(numsArr);
    	
    	return Math.min(...allNumArr);
    	
    }
    
    for(let i=0; i<queries.length; i++){
    	answer.push(checkMinNum(queries[i]));
    }
    
    return answer;
}
console.log(solution(6,6,[[2,2,5,4],[3,3,6,6],[5,1,6,3]])); //2행2열부터 / 5행4열까지
*/

function solution(rows, columns, queries) {
	  const answer = [];
	  let arr = Array.from(new Array(rows + 1), () =>
	    new Array(columns + 1).fill(0)
	  );
	  
	  /*
	  0 ,0 , 0 ,0 , 0 ,0 ,
	  0	1 , 2, ,3 ,4 ,5 ,6
	  0	1 , 2, ,3 ,4 ,5 ,6
	  0	1 , 2, ,3 ,4 ,5 ,6
	  0	1 , 2, ,3 ,4 ,5 ,6
	  0	1 , 2, ,3 ,4 ,5 ,6
	  0	1 , 2, ,3 ,4 ,5 ,6
	  */
		
	  // 숫자 채우기
	  for (let i = 1; i <= rows; i++) {
	    for (let j = 1; j <= columns; j++) {
	      arr[i][j] = (i - 1) * columns + j;
	    }
	  }
	  

	  for (let tc = 0; tc < queries.length; tc++) {
	    const [x1, y1, x2, y2] = queries[tc]; //2,2,5,4
	    
	    // 맨 위 직사각형 고르기 x1은 행 고정, y1이 y2 직전까지 1씩 증가
	    for (let i = y1; i < y2; i++) stack.push(arr[x1][i]);
	    // 오른쪽 직사각형 고르기 y2는 고정, x1이 x2 직전까지 1씩 증가
	    for (let i = x1; i < x2; i++) stack.push(arr[i][y2]);
	    // 아래쪽 직사각형 고르기 x2는 고정, y2가 y1 직전까지 1씩 감소
	    for (let i = y2; i > y1; i--) stack.push(arr[x2][i]);
	    // 왼쪽 직사각형 고르기y1는 고정, x2가 x1 직전까지 1씩 감소
	    for (let i = x2; i > x1; i--) stack.push(arr[i][y1]);

	    // 정답 찾기
	    answer.push(Math.min(...stack));
	    
	    const temp = stack.pop();
	    stack.unshift(temp);
	    
	    for (let i = y1; i < y2; i++) arr[x1][i] = stack.shift();
	    for (let i = x1; i < x2; i++) arr[i][y2] = stack.shift();
	    for (let i = y2; i > y1; i--) arr[x2][i] = stack.shift();
	    for (let i = x2; i > x1; i--) arr[i][y1] = stack.shift();
	  }

	  return answer;
	}

console.log(solution(6,6,[[2,2,5,4],[3,3,6,6],[5,1,6,3]]));
</script>

</body>
</html>