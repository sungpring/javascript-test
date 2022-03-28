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
https://programmers.co.kr/learn/courses/30/lessons/12901?language=javascript<br>

<script>
function solution(a, b) {
    /*
    //1995, 11, 17, 3, 24, 0
    let b1 = new Date(2016,1,1); 
    //1,1 월요일설정(1) - 금요일로나와야함(5)
    //(2) - 토요일로나와야함(6)
    //(3) - 일요일로나와야함(0)
    //(4) - 월요일로나와야함(1)
    //(5) - 화요일로나와야함(2)
    //(6) - 수요일로나와야함(3)
    //(0) - 목요일로나와야함(4)
    
    //일요일이 0
    b1.setMonth(a);
    b1.setDate(b);
    //SUN,MON,TUE,WED,THU,FRI,SAT
    console.log(b1);
    let day;
    switch(b1.getDay()){
		case 1: 
			day = 'FRI';
			break;
		case 2: 
			day = 'SAT';
			break;
		case 3: 
			day = 'SUN';
			break;
		case 4: 
			day = 'MON';
			break;
		case 5: 
			day = 'TUE';
			break;
		case 6: 
			day = 'WED';
			break;
		case 0: 
			day = 'THU';
			break;
	}
	
    return day;
    */
    
    let arr = ['SUN','MON','TUE','WED','THU','FRI','SAT'];
    let date = new Date(`2016-${a}-${b}`);
    let day = date.getDay();
    return arr[day];
}
console.log(solution(5,24));
</script>
</body>
</html>