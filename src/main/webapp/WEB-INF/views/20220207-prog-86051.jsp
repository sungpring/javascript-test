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
https://programmers.co.kr/learn/courses/30/lessons/86051?language=javascript<br>
<script>
function solution(numbers) {
    // 1부터 9까지에서 6과 8이 없으므로 이것을 따로 추출
    /*
    let str = "1234579";
    let patt1 = /[1-9]+/g; //(?:1|2|3|4|5|6|7|8|9)
	let result = str.search(patt1);
	let result2 =patt1.exec(str);
 	*/
 	const message = numbers.join("").replace(/\,/g,"");
 	let cnt = 0;
 	for(let i=0; i<=9; i++){
 		if(!message.includes(i)) cnt+=i;
 	}
	
    return cnt;
}
console.log(solution([1,2,3,4,6,7,8,0]));
</script>
</body>
</html>