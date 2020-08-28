<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_event</title>

<style>
	.price {display: none;}
</style>

<script>
	window.addEventListener("load", init);
	function init(){
		//class가 title 인 태그 찾아서 price값 mouseover로 나타나는 이벤트 걸기 
		var titles = document.getElementsByClassName("title");
		for(i=0; i < titles.length; i++) {
			titles[i].addEventListener("mouseenter", function(){
				//this.parentNode.getElementsByClassName("price")[0].style.display="";너무길어서 아래처럼 변수넣어서 함.
				var price = this.parentNode.getElementsByClassName("price")[0]
				price.style.display = "inline";
			});
			//mouseleave
			titles[i].addEventListener("mouseleave", function(){
				var price = this.parentNode.getElementsByClassName("price")[0]
				price.style.display = "";
			});
		}
	}
</script>

</head>
<body>
	<div>
		<span class="title">스프링</span>
		<span class="price">5000</span>
	</div>
	<div>
		<span class="title">자바</span>
		<span class="price">4000</span>
	</div>
	<div>
		<span class="title">자바스크립</span>
		<span class="price">3000</span>
	</div>
</body>
</html>