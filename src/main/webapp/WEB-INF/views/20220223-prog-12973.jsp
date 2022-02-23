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
https://programmers.co.kr/learn/courses/30/lessons/12973?language=javascript<br>
<script>
function solution(s)
{
    var answer = -1;
	
    let str = "abc";
    
    const regex = /([a-z])\1/;
    let search1 =str.search(regex);
    if(search1===-1){
    	return -1;
    }
    str = str.replace(/([a-z])\1/,"");
	console.log(str);
    return answer;
}
console.log(solution('solution'));//1
</script>
</body>
</html>