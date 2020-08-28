<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_event2</title>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script>
	$(window).on("load", select);
	function select(){
		/* $("#tbl").on("click", altd);	
			function altd(){
				console.log($(this).parent().parent().html())
				alert($(this).parent().parent().children().eq(0).html())
						//$("#std").closest("tr").next().find("td").eq(0).html()
						//event.target.parentNode.parentNode.getElementsByTagName("td")[0].innerHTM)
			}; */
			
		$(this).on("click", function(){
			alert($(this).closest("td").eq(0).html())
		});
	};
</script>

</head>
<body>
	<table border="1" id="tbl">
		<tbody>
			<tr>
				<td>kim</td>
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
</body>
</html>