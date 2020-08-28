<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_event</title>
<script
	src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous">
</script>
<script>
	$(window).on("load", init);
	function init(){
		$(".price").hide();
		
		/* $(".title").on("mouseenter", function(){
			//$(this).parent().find(".price").eq(0)
							//find(".price:eq(0)"), find(".price:first")
			//price.css("display", "inline");
			$(this).next().show();  //위 두줄을 한줄로 끝냄.
		});
		
		$(".title").on("mouseleave", function(){
			$(this).next().hide();
		}); */
		
		$(".title").on("mouseleave mouseenter", function(){
			$(this).next().toggle();
		});  // 위에 mouseenter, mouseleave 따로 한거를 한번에 할 수 있음 : toggle
		
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