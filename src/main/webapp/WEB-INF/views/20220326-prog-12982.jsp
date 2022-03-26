<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<script>
function solution(d, budget) {
    let arr = d.sort();
    
    let cnt = 0;
    let cntNum = 0;
    for(let num of arr){
    	cntNum+=num;
		if(cntNum > budget){
    		break;
    	}
		cnt++;
    }
    
    return cnt;
}
</script>
</body>
</html>