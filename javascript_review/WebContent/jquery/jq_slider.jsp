<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_slider</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>


<script>
	$(document).ready(function(){
		$('.bxslider').bxSlider({
			  auto: true,
			  autoControls: true,
			  stopAutoOnClick: true,
			  pager: true,
			  slideWidth: 600,
			  pause: 1000,
			  randomStart: true
		});	
	});
</script>
</head>
<body>

<div class="bxslider">
<div><img src="../js/images/Chrysanthemum.jpg"></div>
<div><img src="../js/images/Desert.jpg"></div>
<div><img src="../js/images/Jellyfish.jpg"></div>
<div><img src="../js/images/Koala.jpg"></div>
</div>

</body>
</html>