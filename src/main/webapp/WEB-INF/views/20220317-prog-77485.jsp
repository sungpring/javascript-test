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
<script>
function solution(rows, columns, queries) {
    var answer = [];
    
    let numsArr = Array.from(Array(rows), () => new Array(columns));
    for(let i=0, cnt=1; i<rows; i++){//행부터
    	for(let j=0; j<columns; j++){//열
    		numsArr[i][j] = cnt++;
    	}
    }
    console.log(numsArr);
    
    /*
    	2 다시 2 : 5 다시 4
		2-4 Math.abs(negative)+1
		좌표 2,2에서 우로 3칸 이동
		
		2-5 Math.abs(negative)+1
		좌표 2,2에서 아래로 4칸이동
    */
    
    
    
    let checkMinNum = function(arr){
   		let returnNum = 0;
   		
   		let allNumArr = [];
   		
   		/*배열 깊은 복사*/
   		let tmpArr = [];
   		for(let i=0; i<rows; i++){
   			tmpArr.push(numsArr[i].slice());
   		}
   		/*배열 깊은 복사 end*/
   		
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
    	
    	console.log(tmpArr);
    	
    	numsArr = tmpArr;
    	
    	return returnNum;
    	
    }
    
    checkMinNum([2,2,5,4]);
    
    return answer;
}
console.log(solution(6,6,[[2,2,5,4],[3,3,6,6],[5,1,6,3]])); //2행2열부터 / 5행4열까지
</script>

</body>
</html>