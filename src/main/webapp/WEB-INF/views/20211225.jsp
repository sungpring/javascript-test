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
var genres = ["classic", "pop", "classic", "classic", "pop", "metal","metal"];
var plays = [500, 600, 150, 800, 2500, 900,1000];
/*
var arr = new Array(genres.length);

let map = {};
for (var i = 0; i < arr.length; i++) {
    arr[i] = { genres:genres[i], plays:plays[i], index:i };
    
}
arr.sort();
console.log(arr);
*/
function solution(genres, plays) {
  var answer = [];
  let genreCountMap = new Map();
  let genreMap = new Map();
  genres.forEach((item, index) => {
    if (genreCountMap.has(item)) {
      genreCountMap.set(item, genreCountMap.get(item) + plays[index]);
      genreMap.set(item, [...genreMap.get(item), { index: index, play: plays[index] }]);
    } else {
      genreCountMap.set(item, plays[index]);
      genreMap.set(item, [{ index: index, play: plays[index] }]);
    }
  });
  let orderGenre = [];
  for (let [key, value] of genreCountMap) {
    orderGenre.push({ key: key, value: value });
  }
  orderGenre.sort((a, b) => {
    return a.value > b.value ? -1 : 1;
  });

  orderGenre.forEach((item) => {
    let targetIndex = genreMap
      .get(item.key)
      .sort((a, b) => {
        return a.play > b.play ? -1 : 1;
      })
      .map((item) => {
        return item.index;
      })
      .slice(0, 2);
    answer.push(...targetIndex);
  });
  return answer;
}
console.log(solution(genres, plays));
</script>
</body>
</html>