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
function solution(str)
{
   
    const regex = /([a-z])\1/;
    while(str.search(regex) !== -1){
    	str = str.replace(regex,"");
    }
    return str.length>0 ? 0 : 1 ;
}
console.log(solution('aabbccd'));//1
</script>
</body>
</html>