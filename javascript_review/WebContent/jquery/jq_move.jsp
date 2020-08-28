<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_move</title>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<style>
	img { width: 100px; 
			top: 100px;
			left: 100px; 
			position: relative; }
</style>

</head>
<body>
	<img src="../js/images/kakaor.png" id="img1">
<script>
$("#img1").css("left","100px");
$("#img1").css("top","100px");


	$(document).on("mousemove", movemouse);
	function movemouse(){
		$("#img1").css("left", event.clientX + "px");
		$("#img1").css("top", event.clientY + "px");
	};
			
			
	$(document).on("keydown", function() {
		//console.log(event.keyCode);
		if (event.keyCode == 37) {
			$("#img1").css("left", ( parseInt($("#img1").css("left")) - 10 ) + "px" );
		} else if (event.keyCode == 39) {
			$("#img1").css("left", ( parseInt($("#img1").css("left")) + 10 ) + "px" );
		} else if (event.keyCode == 40) {
			$("#img1").css("top", ( parseInt($("#img1").css("top")) + 10 ) + "px" );
		} else if (event.keyCode == 38) {
			$("#img1").css("top", ( parseInt($("#img1").css("top")) - 10 ) + "px" );
		}
	});
</script>
</body>
</html>