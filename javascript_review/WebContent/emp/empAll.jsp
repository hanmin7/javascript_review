<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empAll</title>
</head>
<body>
	<h3>사원목록</h3>
	<!-- <a href="#" onclick="choose()">king</a><br>
	<a href="#" onclick="choose()">steven</a><br>
	<a href="#" onclick="choose()">scott</a><br> 
	태그에 쓰는거 비추. 아래처럼 리스너로 따로 하는거 권장. 디자이너가 수정시 개발자 편집 편함 -->
	
	<a href="#" >king</a><br>
	<a href="#" >steven</a><br>
	<a href="#" >scott</a><br>
	
	<script>
		var atag = document.getElementsByTagName("a");
		for(i=0; i<atag.length; i++) {
			atag[i].addEventListener("click", choose); //choose() 함수호출. 여기서는 ()없어야함!
		}
	
		function choose() {
			opener.document.getElementById("manager_id").value = window.event.target.innerHTML
			window.close();
		}
	</script>
</body>
</html>