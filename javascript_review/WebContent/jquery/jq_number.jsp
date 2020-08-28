<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_number</title>
</head>
<body>
	<input name="num1" id="num1"> +
	<input name="num2" id="num2"> =
	<input name="result" id="result">	
	<!-- <button type="button" onclick="checkResult()">결과확인</button> -->
	<button type="button" id = "btnInit">초기화</button>
	<button type="button" id = "btnResult">결과확인</button>
	<div id="divResult"></div>
	
<script
src="https://code.jquery.com/jquery-3.5.1.js"
integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
crossorigin="anonymous">
</script>


<script>
$("#btnResult").on("click", checkGame);
$("#btnInit").on("click", init);

var ocnt = 0; //맞은 수
var xcnt = 0; //틀린 수

//총 게임횟수가 5회가 되면 버튼 비활성화하고 결과 출력
function checkGame(){
	//지역변수
	var sum = parseInt($("#num1").val()) + parseInt($("#num2").val());
	if (sum == $("#result").val()) {                               //val()함수
		ocnt++;
		$("#divResult").html("맞다<br>");
	} else {
		xcnt++;
		$("#divResult").html("틀림<br>");                    //html() 함수
	}
	//틀린수 + 맞은수 == 5회이면 맞은수*20 결과 출력하고 버튼 비활성화
	if(ocnt + xcnt == 5) {
		alert("결과는 " + (ocnt * 20) + " 점입니다")
		$("#btnResult").attr("disabled", "disabled");                    //attr() 함수
	} else {
		init();
		$("#result").val("");
		
	}
}


function init(){
	$("#num1").val(Math.floor(Math.random() * 100));
	$("#num2").val(Math.floor(Math.random() * 100));
}
//함수 호출(실행)
init();

</script>
</body>
</html>