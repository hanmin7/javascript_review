<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js_table.jsp</title>
</head>
<body>
<table border = "1">
	<tbody id="members"></tbody>
</table>
<script>
var datas = [{id:'chichi', age:30, regdate:'2020/01/02'}, 
			 {id:'hong',   age:20, regdate:'2020/02/02'},
			 {id:'kim',    age:25, regdate:'2020/01/10'},
			 {id:'park',   age:35, regdate:'2020/05/20'}
			]
//배열의 값을 테이블 태그에 출력
 for(var i = 0; i<datas.length; i++){
 	var tr = members.insertRow(i);
	
 	for( key in datas[i]){
 		var td = tr.insertCell();
		td.innerHTML = datas[i][key];
 	}
 	//for문돌려서 쓴거. 아래는 풀어서 쓴거. 
 	
/*  var td1 = tr.insertCell(0);
	var td2 = tr.insertCell(1);
	var td3 = tr.insertCell(2);
	
	td1.innerHTML = datas[i].id;
	td2.innerHTML = datas[i].age;
	td3.innerHTML = datas[i].regdate; */
 }
 
</script>
</body>
</html>