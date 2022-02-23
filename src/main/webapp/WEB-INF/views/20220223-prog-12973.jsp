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
{	/*
	const regex = /(aa|bb|cc|dd|ee|ff|gg|hh|ii|jj|kk|ll|mm|nn|oo|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz)/
    //const regex = /([a-z])\1/;
    while(str.search(regex) !== -1){
    	str = str.replace(regex,"");
    }
    return str.length>0 ? 0 : 1 ;
    */
    let arr = [];
    for(let i=0;i<str.length;i++){
       arr.push(str[i]);
       if(arr[arr.length-1]===arr[arr.length-2]){
           arr.pop();
           arr.pop();
       }
    }
    return arr.join("")==='' ? 1 : 0
}

console.log(solution('aabbccdd'));//1
</script>
</body>
</html>