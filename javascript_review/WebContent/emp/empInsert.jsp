<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empInsert</title>
</head>
<body>
	<form>
		manager <input id="manager_id"><button type="button" id="btnSearch" onclick="findManager()">검색</button>
	</form>
	
	<script>
		function findManager(){
			popup = window.open("empAll.jsp", "empSearch", "width=350, height=300, left=100, top=100");
			popup.addEventListener("load", function(){  //function 익명 ..함수... 이름없애고...바로 쓰는걸로했음 (원래는 function따로빼서했는데)
				popup.document.title="사원검색";
			});
		}
	</script>
</body>
</html>