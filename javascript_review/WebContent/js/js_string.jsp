<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_string</title>
</head>
<body>
	<h3>string object 연습</h3>
	<div id="result"></div>
	<script>
		var url = "/review/member/memberInsert.jsp"
		//페이지명만 div에 출력
		
		console.log(url.lastIndexOf("/"));
		console.log(url.substring(url.lastIndexOf("/")+1));
		console.log(url.substring(url.lastIndexOf(".")));
		
		result.innerHTML = url.substring(url.lastIndexOf("/")+1);
		
	</script>
</body>
</html>