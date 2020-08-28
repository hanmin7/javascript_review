<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input id="txtFruit"> <!-- onkeypress="" -->
	<button type="button" id="btnAdd" onclick="addFruit()">추가</button>
	<select id="listFruit"></select>
	<button type="button" id="btnRemove" onclick="removeFruit()">삭제</button>
	
	
	<script>
		txtFruit.addEventListener("keypress", function(){
			if(event.keyCode == 13){
				addFruit();
			}
		});
	
		//텍스트필드의 값을 select에 추가
		function addFruit(){			
			//option 태그 생성
			var option = document.createElement("option");
			option.text = txtFruit.value;
			//select에 추가
			listFruit.add(option,0);
			//텍스트필드값 초기화
			txtFruit.value = "";
		}
		
		//삭제
		function removeFruit(){
			listFruit.remove(listFruit.selectedIndex);
		}
	</script>
</body>
</html>