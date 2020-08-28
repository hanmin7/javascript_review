<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_image</title>
<style>
	img { width : 100px;}
</style>
<script>
	$('.bxslider').bxSlider({
		  auto: true,
		  autoControls: true,
		  stopAutoOnClick: true,
		  pager: true,
		  slideWidth: 600
	});	
</script>
</head>
<body>
<script>
	var imgArr = ["./images/Chrysanthemum.jpg",
				"./images/Desert.jpg",
				"./images/Jellyfish.jpg",
				"./images/Koala.jpg"];
	
	for(var i = 0; i < imgArr.length; i++){
		// <img src='./images/Desert.jpg'>
		//document.write("<img src='"+ imgArr[i] + "'>");
		
		
		//append방식
		var img = document.createElement("img");  //태그 생성
		img.src = imgArr[i];					//src 속성 변경
		document.body.appendChild(img);				//body에 추가
		/* img.onmouseover = function(){			//이벤트 지정
			this.style.width = "200px";
		}
		img.onmouseout = function(){
			this.style.width = "100px";
		} */
		img.addEventListener("mouseover", function(){
			this.style.width = "200px";
		});
		img.addEventListener("mouseout", function(){
			this.style.width = "100px";
		});
	}
</script>
</body>
</html>