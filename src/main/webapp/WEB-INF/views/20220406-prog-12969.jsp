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
https://programmers.co.kr/learn/courses/30/lessons/12969?language=javascript
<script>

var stdin = process.openStdin();
process.stdin.setEncoding('utf8');
process.stdin.on('data', data => {
    const n = data.split(" ");
    const a = Number(n[0]), b = Number(n[1]);
    for(let i=0; i<b; i++){
   		let str = "";
   		for(let j=0; j<a; j++){
   			str += "*";
   		}
   		console.log(str);
   	}
});
</script>
</body>
</html>