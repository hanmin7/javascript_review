<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_append2</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script>
	$(function(){     //=>  ready(load이전) 이벤트 .  page load event 축약형.   $window(load, function) ~~ 이거랑 같음.
		
		//위 td 클릭 (개별이벤트)
		$("td").on("click", function(){
			$("#right").append($(this).parent());
		})
		//$("td").click(function(){}) 위에꺼 click 바로 이렇게 쓸 수도 있음
		
		
		//아래 td 클릭 (그룹이벤트)
		$("#right").on("click", "td", function(){
			$("#left").append($(this).parent());
		})
		
	})
</script>
</head>
<body>
	<table id="left" border="1">
		<tr><td>홍길동</td><td>30</td></tr>
		<tr><td>김기자</td><td>25</td></tr>
		<tr><td>이기자</td><td>35</td></tr>
	</table>
	<br><br>
	<table id="right" border="1">
	</table>
</body>
</html>