<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>jq_groupevent</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function(){
		//버튼 클릭 : input 태그값을 ul태그에 추가
		$("#btnAdd").click(function(){
			$("ul").append($("<li>").text($("#fruit").val()))
		});
		/* $"#btnAdd").on("click", function(){
			var li = $("<li>").text($("#fruit").val())
			$("ul").append(li);
		}); */
		
		
		//li 태그 마우스오버이벤트: 색 변경
		/* $("li").on("mouseover", function(){
			$(this).css("backgroundColor", "green");
		}); */  // 근데 새로 만든  li에는 안바뀜.
		
		
		$("ul").on("mouseover", "li", function(){
			$(this).css("backgroundColor", "green");
		});
		// li에 이벤트 달면 새로 추가한 애들한테 적용이 안되니까 부모인 ul에 대신 걸어놓고  on절에 li달아줌. : 그룹이벤트
		
	});
	
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" id="btnAdd">추가</button>
	
	<ul>
		<li>자바</li>
		<li>스프링</li>
	</ul>
</body>
</html>