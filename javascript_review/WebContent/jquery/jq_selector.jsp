<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jq_selector</title>

</head>
<body>
	<table border="1" id="tbl">
		<tbody>
			<tr>
				<td id="std">kim</td>
				<td>30</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
			<tr>
				<td>park</td>
				<td>25</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
			<tr>
				<td>choi</td>
				<td>40</td>
				<td><button type="button" class="btnSelect">선택</button></td>
			</tr>
		</tbody>
	</table>
	
	<script
	src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous">
	</script>
	
	<script>
		$("td:first").css("backgroundColor", "green"); //모든td중에서 첫번째  $("td:first-child")첫번째인.. $("td:nth-child(2)")두번째
		console.log($("#std").closest("table"));  //조상중에서 검색.
	</script>
</body>
</html>