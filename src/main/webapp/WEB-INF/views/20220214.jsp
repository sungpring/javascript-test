<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
	list-style: none;
	box-sizing: border-box;
}

/* 달력 */
.rap {
	max-width: 1400px;
	width: 100%;
	margin: 0 auto;
}

.date_head {
	margin-bottom: 10px;
}

.date_head div {
	background: #f03d3d;
	color: #fff;
	text-align: center;
	min-width: 150px;
}

.date_form {
	display: grid;
	grid-template-columns: repeat(7, 1fr);
	grid-gap: 10px;
}

.date_form div {
	padding: 10px 10px;
	font-size: 16px;
}

.dateSel div {
	font-weight: bold;
	color: #333;
	min-height: 150px;
	padding: 1rem 1.3rem;
	border-radius: 10px;
	border: 1px solid #f7f7f7;
	min-width: 150px;
}

.background {
	background: #f7f7f7;
}

.button {
	width: 75px;
	cursor: pointer;
	box-shadow: 0px 0px 2px gray;
	border: none;
	outline: none;
	padding: 5px;
	border-radius: 5px;
	color: black;
	text-align: center;	
}
.button_box div{
	 position : absolute;
	 width : 100px;
	 height : 100px;
	 top:50%;
	 left:50%;
	 margin:-50px 0 0 -50px;
}

#insertEiName {
	
	
	background: #aa55ff;
	width: auto;
	height: 5px;
	font-size: 14px;
	font-weight: bold;
	color: #ffffff;
	min-height: 10px;
	min-width: 100px;
	/*padding: 0px 10px 10px 0px; */
	padding: 1rem 0.5rem 1.7rem 1rem;
	border-radius: 10px;
	border: 1px solid #f7f7f7;
	text-align: left;
	cursor: pointer;
	
}
</style>
</head>
<body>
 <br><br><br><br><br><br><br>
  <h2 class='date_text' style="text-align: center; padding: 2rem 0"></h2>
	
	<div class='button_box' style="margin: 0 auto; width: 159px;">
		<button id="backButton" class="button" onclick="backButton()">뒤로</button>
		<button id="nextButton" class="button" onclick="nextButton()">다음</button>
	</div>
	<br>
  <div class='date_item rap'>

    <div class="grid date_form date_head">
      <div>일</div>
      <div>월</div>
      <div>화</div>
      <div>수</div>
      <div>목</div>
      <div>금</div>
      <div>토</div>
    </div>

    <div class="grid date_form dateSel"></div>

  </div>
  <div><br></div>
  <div><br></div>
  <div><br></div>
  <div><br></div>
<script>
/**
 * 
 */
let nav = 0; //달력 월수를 결정하는 변수.

function getDate(date) {
	return date.toLocaleDateString().replace(/\./g, "").split(" ");
}

window.onload = function load() {
	const Tday = new Date();

	const nowMonth = Tday.getMonth() + nav;

	const [y, m] = getDate(new Date(Tday.setMonth(nowMonth)));
	const yearMonth = [y, m];

	const lastDay = getDate(new Date(y, m, 0)).pop() * 1;

	const day = new Date([y, m, 1].join("-")).getDay();

	const maxDay = Math.ceil((+day + lastDay) / 7) * 7;



	var exNum = new Array();
	var exNumExName = new Array();
	var yearMonthStrArray1 = yearMonth[1] + '';
	var monthStr = '';
	if (yearMonthStrArray1.length == 1) {
		monthStr = '0' + yearMonthStrArray1;
	}

	var yearMonthS = yearMonth[0] + '-' + monthStr + '-';

	
	let html = '';

	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/exhibition-calendar?size=99&month='+yearMonth[1]+'&year='+yearMonth[0]); //ExhibitionController
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var res = JSON.parse(xhr.responseText);
			
			for (var exhibition of res.content) {
				if (exhibition.eiStatus == 'CONFIRM') {

					exNum = exhibition.eiStartDate.split('-');
					
					exNum[1] = exNum[1].replace(/(^0+)/, ""); //05111이 5111로 변화
					exNum[2] = exNum[2].replace(/(^0+)/, "");
					//04월을 4월로 만들어주는 작업
					//console.log(exNum[0]+' '+exNum[1]); //2021 2 
					//console.log(yearMonth[0]+' '+yearMonth[1]) // 2021 4
					if (exNum[0] === yearMonth[0] && exNum[1] === yearMonth[1]) {
						//dateSel ${cls}의 경우 제대로된 칸이 나오려면 dateSel background 가 되어야함

						exNumExName.push({
							exNum: exNum[2],
							exName: exhibition.eiName
						})
					}
				}
			}

			//console.log(exNumExName); //{exNum: "14", exName: "연습용44"} 이런식으로 나옴

			for (let i = 1; i <= maxDay; i++) {
				const d = i > day && lastDay >= i - day ? i - day : ''; //d 1~30나옴
				const cls = !d ? 'background' : ''; //백그라운드가 나오면 padding 칸이다.

				let dStr = d + '';
				if (dStr.length == 1) {
					dStr = '0' + d;
				}
			
				let cntDay = 0; // 날짜별 전시회가 4개 이상일 경우 자르는 로직
				html += `<div id="insertEiNameSuper" class="dateSel ${cls}" >${d}`;
				for (let j = 0; j < exNumExName.length; j++) {
					if (cntDay < 3) {
						if (exNumExName[j].exNum == d) {
							cntDay++;
							let exNameGet = exNumExName[j].exName;
							if (exNumExName[j].exName.length > 4) {
								exNameGet = exNumExName[j].exName.substring(0, 4) + '...';
							}
							html += '<div id="insertEiName"  onclick="location.href =\'/views/exhibition/calendar-list-oneday?eiStartDate=' + yearMonthS + dStr + '\'">' + exNameGet + '</div>';
						}
					} else {
						html += '';
					}
				}
				html += '</div>';
			}

			document.querySelector('.dateSel').innerHTML = html;
			document.querySelector('.date_text').innerText = `${y}년 ${m}월` + ' 개봉일';
		}
	}
	xhr.send();

}



function backButton() {

	nav--;
	const Tday = new Date();

	const nowMonth = Tday.getMonth() + nav;

	const [y, m] = getDate(new Date(Tday.setMonth(nowMonth)));
	const yearMonth = [y, m];

	const lastDay = getDate(new Date(y, m, 0)).pop() * 1;

	const day = new Date([y, m, 1].join("-")).getDay();

	const maxDay = Math.ceil((+day + lastDay) / 7) * 7;



	var exNum = new Array();
	var exNumExName = new Array();
	var yearMonthStrArray1 = yearMonth[1] + '';
	var monthStr = '';
	if (yearMonthStrArray1.length == 1) {
		monthStr = '0' + yearMonthStrArray1;
	}

	var yearMonthS = yearMonth[0] + '-' + monthStr + '-';


	let html = '';

	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/exhibition-calendar?size=99&month='+yearMonth[1]+'&year='+yearMonth[0]); //ExhibitionController
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var res = JSON.parse(xhr.responseText);
		for (var exhibition of res.content) {
				if (exhibition.eiStatus == 'CONFIRM') {
				
					exNum = exhibition.eiStartDate.split('-');
				
					exNum[1] = exNum[1].replace(/(^0+)/, ""); //05111이 5111로 변화
					exNum[2] = exNum[2].replace(/(^0+)/, "");
				

					if (exNum[0] === yearMonth[0] && exNum[1] === yearMonth[1]) {

						exNumExName.push({
							exNum: exNum[2],
							exName: exhibition.eiName
						})
					}
				}
			}

			for (let i = 1; i <= maxDay; i++) {
				const d = i > day && lastDay >= i - day ? i - day : ''; //d 1~30나옴
				const cls = !d ? 'background' : ''; //백그라운드가 나오면 padding 칸이다.

				let dStr = d + '';
				if (dStr.length == 1) {
					dStr = '0' + d;
				}
				let cntDay = 0; // 날짜별 전시회가 4개 이상일 경우 자르는 로직
				html += `<div id="insertEiNameSuper" class="dateSel ${cls}" >${d}`;
				for (let j = 0; j < exNumExName.length; j++) {
					if (cntDay < 3) {
						if (exNumExName[j].exNum == d) {
							cntDay++;
							let exNameGet = exNumExName[j].exName;
							if (exNumExName[j].exName.length > 4) {
								exNameGet = exNumExName[j].exName.substring(0, 4) + '...';
							}
							html += '<div id="insertEiName"  onclick="location.href =\'/views/exhibition/calendar-list-oneday?eiStartDate=' + yearMonthS + dStr + '\'">' + exNameGet + '</div>';
						}
					} else {
						html += '';
					}
				}
				html += '</div>';
			}

			document.querySelector('.dateSel').innerHTML = html;
			document.querySelector('.date_text').innerText = `${y}년 ${m}월` + ' 개봉일';
		}
	}
	xhr.send();



}

function nextButton() {

	nav++;
	const Tday = new Date();

	const nowMonth = Tday.getMonth() + nav;

	const [y, m] = getDate(new Date(Tday.setMonth(nowMonth)));
	const yearMonth = [y, m];

	const lastDay = getDate(new Date(y, m, 0)).pop() * 1;

	const day = new Date([y, m, 1].join("-")).getDay();

	const maxDay = Math.ceil((+day + lastDay) / 7) * 7;



	var exNum = new Array();
	var exNumExName = new Array();
	var yearMonthStrArray1 = yearMonth[1] + '';
	var monthStr = '';
	if (yearMonthStrArray1.length == 1) {
		monthStr = '0' + yearMonthStrArray1;
	}

	var yearMonthS = yearMonth[0] + '-' + monthStr + '-';


	let html = '';

	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/exhibition-calendar?size=99&month='+yearMonth[1]+'&year='+yearMonth[0]); //ExhibitionController
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var res = JSON.parse(xhr.responseText);
			for (var exhibition of res.content) {
				if (exhibition.eiStatus == 'CONFIRM') {

					exNum = exhibition.eiStartDate.split('-');
	
					exNum[1] = exNum[1].replace(/(^0+)/, ""); //05111이 5111로 변화
					exNum[2] = exNum[2].replace(/(^0+)/, "");

					if (exNum[0] === yearMonth[0] && exNum[1] === yearMonth[1]) {

						exNumExName.push({
							exNum: exNum[2],
							exName: exhibition.eiName
						})
					}
				}
			}


			for (let i = 1; i <= maxDay; i++) {
				const d = i > day && lastDay >= i - day ? i - day : ''; //d 1~30나옴
				const cls = !d ? 'background' : ''; //백그라운드가 나오면 padding 칸이다.

				let dStr = d + '';
				if (dStr.length == 1) {
					dStr = '0' + d;
				}
				let cntDay = 0; // 날짜별 전시회가 4개 이상일 경우 자르는 로직
				html += `<div id="insertEiNameSuper" class="dateSel ${cls}" >${d}`;
				for (let j = 0; j < exNumExName.length; j++) {
					if (cntDay < 3) {
						if (exNumExName[j].exNum == d) {
							cntDay++;
							let exNameGet = exNumExName[j].exName;
							if (exNumExName[j].exName.length > 4) {
								exNameGet = exNumExName[j].exName.substring(0, 4) + '...';
							}
							html += '<div id="insertEiName"  onclick="location.href =\'/views/exhibition/calendar-list-oneday?eiStartDate=' + yearMonthS + dStr + '\'">' + exNameGet + '</div>';
						}
					} else {
						html += '';
					}
				}
				html += '</div>';
			}

			document.querySelector('.dateSel').innerHTML = html;
			document.querySelector('.date_text').innerText = `${y}년 ${m}월` + ' 개봉일';
		}
	}
	xhr.send();

}

</script>
</body>
</html>