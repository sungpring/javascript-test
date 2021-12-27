<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
</head>
<body>
https://programmers.co.kr/learn/courses/30/lessons/42748?language=javascript<br>
<%
class Solution {
    public int[] solution(int[] array, int[][] commands) {
        int[] answer = new int[commands.length];
        for(int i =0; i<commands.length; i++) {
            int[] temp = Arrays.copyOfRange(array, commands[i][0]-1,commands[i][1]);
            Arrays.sort(temp);
            answer[i]=temp[commands[i][2]-1];
        }
        return answer;
    }
}
int[] array = {1, 5, 2, 6, 3, 7, 4};
int[][] commands = {{2, 5, 3}, {4, 4, 1}, {1, 7, 3}};
Solution sol = new Solution();
String result=Arrays.toString(sol.solution(array,commands));
%>
<%=result%>
<script>
function solution(array, commands) {
    var answer = [];
    return answer;
}
</script>
</body>
</html>