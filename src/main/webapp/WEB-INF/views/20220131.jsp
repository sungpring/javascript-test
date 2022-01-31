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
모던 자바스크립트
<script>
let person = "Alberto";
let age= 25;
function myTag(strings, personName, personAge){
	
	let str= strings[0].split(" ")[2];
	console.log(str);
	console.log(personName);
	console.log(personAge);
	let ageStr;
	personAge > 50? ageStr = "grandpa" : ageStr = "youngster";
	return personName + str + ageStr;
	// 이 책에서 하라는데로 했는데 안됐다. 이건 문제가 있다..
}
let sentence = myTag`That ${person} is a ${age}!`;
console.log(sentence);

//문자열 함수
const code= "ABCDEFG";
code.startsWith("ABB"); // false
code.startsWith("abc"); // false
code.startsWith("ABC"); // true
//endsWith 는 끝나는 걸 확인하는 함수

//repeat
const hello = "hi";
console.log(hello.repeat(10)); //10번 hi 반복

//문자 디스트럭쳐링
const person2 = {
		first: "A",
		last: "B"
};
const {first, last} = person2;
console.log(person2); //{first: 'A', last: 'B'}
//위처럼 디스트럭처링을 이용하면 person2 이 가진 속성에 접근함과 동시에 해당 속성 이름으로 변수선언이 가능함
</script>
</body>
</html>