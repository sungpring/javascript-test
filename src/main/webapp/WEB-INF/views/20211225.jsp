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
https://programmers.co.kr/learn/courses/30/lessons/42579?language=javascript
<script>
var genres = ["classic", "pop", "classic", "classic", "pop"];
var plays = [500, 600, 150, 800, 2500];

var arr = new Array(genres.length);

for (var i = 0; i < arr.length; i++) {
    arr[i] = [genres[i],plays[i]];
}
arr.sort();
console.log(arr);
</script>
</body>
</html>