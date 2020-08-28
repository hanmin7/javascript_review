<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--<script>
	//id걊이 num1인 애.
	num1.value = 100;
	num2.value = 200;
	
	//스크립트를 위에 쓰면 에러. 그러면 윈도우로드 어쩌구 써야함.
</script> -->
</head>
<body>
	<input name="num1" id="num1"> +
	<input name="num2" id="num2"> =
	<input name="result" id="result">	
	<!-- <button type="button" onclick="checkResult()">결과확인</button> -->
	<button type="button" id = "btnInit" onclick="init()">초기화</button>
	<button type="button" id = "btnResult" onclick="checkGame()">결과확인</button>
	<div id="divResult"></div>
	
<script>
//함수 선언
function init(){
	//id걊이 num1인 애.
	num1.value = Math.floor(Math.random() * 100);
	num2.value = Math.floor(Math.random() * 100);
}
//함수 호출(실행)
init();

function checkResult(){
	//두 수의 합이 result와 같으면 "맞음" 다르면 "틀림"으로 출력
	/*  한줄에 너무 기니까 변수 sum 선언해서 이용
	var sum = parseInt(num1.value)+parseInt(num2.value);
	if(sum == result.value) */
	
	if(parseInt(num1.value)+parseInt(num2.value)==parseInt(result.value)){
		alert("맞음");
	} else {
		alert("틀림");
	}
	
}

// 전역변수
var ocnt = 0; //맞은 수
var xcnt = 0; //틀린 수

//두 수의 합이 result와 같으면  맞은 수 증가. 다르면 틀린 수 증가
//총 게임횟수가 5회가 되면 버튼 비활성화하고 결과 출력
function checkGame(){
	//지역변수
	var sum = parseInt(num1.value) + parseInt(num2.value);
	if (sum == result.value) {
		ocnt++;
		divResult.innerHTML += "맞다<br>";
	} else {
		xcnt++;
		divResult.innerHTML += "틀림<br>";
	}
	//틀린수 + 맞은수 == 5회이면 맞은수*20 결과 출력하고 버튼 비활성화
	if(ocnt + xcnt == 5) {
		alert("결과는 " + (ocnt * 20) + " 점입니다")
		btnResult.disabled = "disabled";
	} else {
		init();
		result.value = "";
		
	}
}


</script>


</body>
</html>