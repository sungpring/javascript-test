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
<div class="fruits">
	<p>Apple</p>
	<p>Banana</p>
	<p>Orange</p>
</div>
<script>
const person = {
	name :"hi",
	last :"james",
	link :{
		social:{
			facebook:"https://www.facebook.com",
		},
		website:"https://~~~",
	},
};
const {facebook} = person.link.social;
console.log({facebook}); //{facebook: 'https://www.facebook.com'}
console.log(facebook); //https://www.facebook.com

const {facebook: fb} = person.link.social;
console.log(fb); //https://www.facebook.com
console.log(facebook); //{facebook: fb} 원래 이렇게 정의했다면 facebook is not defined 라는 게 뜸

const {facebook : fb2 = "https://"} = person.link.social;
console.log(fb2); //https://www.facebook.com
///////////////////////////////////////////////////////////////

//배열을 디스트럭처링할 때는
const person2 = ["a","b","c"];
const [first,second,third] = person2;
console.log(first, second); // a b

//나머지 모든 값을 얻고싶다면
const food = ["pizza","chicken","noodle","coke","candy"];
const [first1, second2, ...number] = food;
console.log(number); // 피자와 치킨 빼고 나머지가 number 에 담김  ['noodle', 'coke', 'candy']
// ... 레스트 연산자를 의미한다.

//디스트럭처링을 이용하면 변수교체가 쉬워진다.
let hungry = "yes";
let full = "no";
[hungry, full] = [full, hungry];
console.log(hungry, full); // no yes

let arr = ["one", "two", "three", "four", "five"];
const [one, two, three, ...numbers] = arr;
console.log(one);
console.log(two);
console.log(three);
console.log(numbers); // ['four', 'five']

//////////////////////////////////////////////
//[1,2,3] 이러한 배열은 for of 로 꺼낼 수 있으며
// {1:"1", 2:"2", ...} 이러한 객체는 for in 으로 1, 2 key 값을 가져올 수 있음
const car = {
	maker:"BMW",
	color:"red",
	year:"2010",
};
for(const prop of Object.keys(car)){
	const value = car[prop];
	console.log(prop, value); //maker BMW , color red ,,,,
}

const object1 = {
	a: 'somestring',
	b: 42
};

for (const [key, value] of Object.entries(object1)) {
	//console.log(`${key} 는 ${value}`);
	console.log("key:"+key+" / value:"+value); //key:a / value:somestring
}
//for in 루프는 순서 없이 객체의 모든 열거 가능한 속성을 반복하기 때문에 for of 루프와 다름
// 반복중엔 객체의 속성을 추가 수정 삭제하지 않는 것이 좋음. 반복 중에 해당 속성을 거칠 것이라는 보장이 없음
/////////////////////////////////////////////////////////////////////////

const fruits = document.querySelectorAll(".fruits p");
const fruitArray = Array.from(fruits);
console.log(fruitArray); //[p, p, p]
const fruitNames = fruitArray.map(fruit=>fruit.textContent);
console.log(fruitNames); //['Apple', 'Banana', 'Orange']

//Array.from 에 두번째 인수를 추가해서 아래와 같이도 가능함.
const fruitArray2 = Array.from(fruits, fruit => {
	//console.log(fruit); // fruit 는 node element => p
	return fruit.textContent;
});
console.log(fruitArray2); //['Apple', 'Banana', 'Orange']

//Array.of() 전달받은 모든 인수를 배열로 생성한다.
const digits = Array.of(1,2,3,4,5);
console.log(digits); //[1, 2, 3, 4, 5]

//Array.find() 는 제공된 테스트 함수를 충족하는 배열의 첫번째 원소를 반환. 충족하지 않으면 undefined 를 반환
let found=digits.find(e=> e > 3 );
console.log(found); //4

//Array.findIndex() 조건과 일치하는 첫번째 원소 인덱스 반환
//Array.some() 과 Array.every() 차이점 : some은 일치하는게 하나라도 있으면 바로 정지하고 true 값 반환
// every() 는 모든 원소 일치해야 true 를 반환
let arraySome = digits.some(e=> e > 2);



//스프레드 문법
const veggie = ["tomato", "cucumber", "beans"];
const meat = ["pork","beef","chicken"];
const menu = [...veggie, "pasta", ...meat];
console.log(menu); //['tomato', 'cucumber', 'beans', 'pasta', 'pork', 'beef', 'chicken']
//코드에서 기본 배열을 수정하자 새 배열도 변경되었다 그 이유는? 실제로 복사본을 만든 것이 아니라, 새 배열은 단순히 이전 배열을 참조 하기 때문이다.
// 스프레드 문법을 사용하면 배열 참조를 끊고 새로운 배열의 값이 수정되지 않게끔 가능하다.
const newVeggie = [...veggie];
veggie.push("peas");
console.log(veggie); //['tomato', 'cucumber', 'beans', 'peas']
console.log(newVeggie); // ['tomato', 'cucumber', 'beans']

function doStuff (x,y,z){
	console.log(x+y+z);
}
var args = [0,1,2];
doStuff.apply(null, args); //3 기존방식
doStuff(...args) //3 스프레드 방식


		


</script>
</body>
</html>