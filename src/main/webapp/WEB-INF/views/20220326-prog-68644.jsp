<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function solution(numbers) {
    var answer = [];
    
    for(let i=0; i<numbers.length-1; i++){
    	for(let j=i+1; j<numbers.length; j++){
    		answer.push(numbers[i]+numbers[j]); // [3, 4, 5]
    	}
    }
    
    var answer = answer.filter((element, index) => {
        return answer.indexOf(element) === index;
    });
    
    answer.sort((a, b) => a - b);
    
    return answer;
}
console.log(solution([2,1,3,4,1]));
</script>
</body>
</html>