<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_move</title>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<!-- <style>
	img { width: 100px; 
			top: 100px;
			left: 100px; 
			position: relative; }
</style> -->

</head>
<body>
	<img src="./images/kakaor.png" id="img1">
<script>
$("#img1").style.left="100px";
$("#img1").style.top="100px";


	$(window).on("mousemove", movemouse);
	
	function movemouse(){
		$("#img1").style.left = event.clientX + "px";
		$("#img1").style.top = event.clientY + "px";
	};
			
			
	$(window).on("keydown", function() {
		//console.log(event.keyCode);
		if (event.keyCode == 37) {
			$("#img1").style.left = ( parseInt($("#img1").style.left) - 10 ) + "px";
		} else if (event.keyCode == 39) {
			$("#img1").style.left = ( parseInt($("#img1").style.left) + 10 ) + "px";
		} else if (event.keyCode == 40) {
			$("#img1").style.top = ( parseInt($("#img1").style.top) + 10 ) + "px";
		} else if (event.keyCode == 38) {
			$("#img1").style.top = ( parseInt($("#img1").style.top) - 10 ) + "px";
		}
	});
</script>
</body>
</html>