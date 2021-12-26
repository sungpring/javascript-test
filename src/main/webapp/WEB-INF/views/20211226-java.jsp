<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Scanner" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
</head>
<body>
https://www.acmicpc.net/problem/11399
(내가한거 아님-봐야함)
<%
class BOJ_11399_ATM {
	public int solution(String[] phone_book) {
		Scanner sc = new Scanner(System.in);
		int T = sc.nextInt();
		int person[] = new int[T];
		int calculation[] = new int[T];
		int result[] = new int[T];
		int sum = 0;
		for (int i = 0; i < person.length; i++) {
		    person[i] = sc.nextInt();
		}
		Arrays.sort(person); // sorting
		
		for (int i = 0; i < calculation.length; i++) { // 5, 4, 3, 2, 1
		    calculation[i] = calculation.length - i;
		}
		
		for (int i = 0; i < result.length; i++) {
		    result[i] = (person[i] * calculation[i]); // 1 * the young ~ n * the old
		    sum += result[i];
		}
		System.out.println(sum);
		return sum;
	}
}
%>
<script>
//var input = require('fs').readFileSync('/dev/stdin').toString().split('\n');
//var map_sorted = input[1].split(" ").sort(function(a,b){return a-b});
var input ="3 1 4 3 2";
var map_sorted = input.split(" ").sort(function(a,b){return a-b});
var sum = 0;
for (var i = 0; i < map_sorted.length; i++) {
    sum += map_sorted[i] * (map_sorted.length-i);
}
console.log(sum);
</script>
</body>
</html>