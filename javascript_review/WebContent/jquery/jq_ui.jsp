<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>jq_ui</title>
  <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">-->
  <link rel="stylesheet" href="../jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>-->
  <script src="../jquery-ui.js"></script>
  <!-- uicss, uijs 필요. ui.js보다  jquery.~.js 파일이 먼저 나와야함. -->
  <script>
  	$(function(){
  		//아코디언
  		$("#acor").accordion({
  			active: 1, //아코디언열리는시작위치
  			animate: 1000,
  			collapsible: true,  //다시누르면 열림
  			//event: "mouseover",
  			activate: function( event, ui ) {
  				console.log(ui.newHeader.text())
  			}
  		});
  		
  		//다이아로그
  		$("#msg").dialog({
  		  autoOpen: false,
  	      height: 250,
  	      width: 350,
  	      modal: true, //모달창 닫아야지 밖에꺼 조작가능
  	      buttons: {
  	        "저장": function(){
  	        	alert("저장완료");
  	        	$("#msg").dialog("close");
  	        },
  	        '취소': function() {
  	        	$("#msg").dialog("close");
  	        }
  	      }
  		});
  		
  		//버튼
  		$("#btnPopup").button().click(function(){
  			$("#msg").dialog("open");
  		});
  		
  		//datepicker
  		$("#regDate").datepicker({
  			dateFormat: "yy-mm-dd",
  			minDate: - 7,
  			maxDate: "1m"
  		});
  		
  	});
  </script>
</head>
<body>
	<input id="regDate">
	<span id="btnPopup">팝업</span>
	<div id="msg">
		알림팝업
	</div>

	<div id="acor">
		<h3>자바</h3>
		<div> 자바란.. </div>
		<h3>스프링</h3>
		<div> 스프링이란.. </div>
		<h3>자바스크립</h3>
		<div> 자바스크립트란.. </div>
	</div>
</body>
</html>