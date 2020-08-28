<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	//tbody의 2열의 국어 성적의 합계를 계산하여 span 태그에 출력
	$(window).on("load", sum);
	function sum(){
		var korSum = $("#tbl").
		$("#kor").html();
	}
	
	
</script>
</head>
<body>
<table border="1" id="tbl">
	<thead>
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>kim</td>
			<td>90</td>
			<td>80</td>
		</tr>
		<tr>
			<td>park</td>
			<td>60</td>
			<td>100</td>
		</tr>
		<tr>
			<td>choi</td>
			<td>40</td>
			<td>100</td>
		</tr>			
	</tbody>
</table>
<div>국어합계: <span id="kor"></span></div>
</body>
</html>