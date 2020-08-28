<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch</title>
<script>
	function loadDoc() {
		//1. XHR 객체 생성
	  var xhttp = new XMLHttpRequest();
		//2. 콜백함수
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4) {
	    	if(this.status == 200) {
		    //if (this.readyState == 4 && this.status == 200) {
		    	//json 파일의 경우 
		    	var obj = JSON.parse(this.responseText);
		    	document.getElementById("result").innerHTML = "";
		    	//url(영화순위json가져오는거)
		    	var mname = obj.boxOfficeResult.dailyBoxOfficeList
		 		for(i=0; i<mname.length; i++){
		    		document.getElementById("result").innerHTML += mname[i].movieNm + "<br>"
		 		}
		    	
		    	/*for(i=0; i<obj.length; i++) {
		      		document.getElementById("result").innerHTML += obj[i].name + "<br>" + obj[i].job + "<br>";
		      		//document.getElementById("result").innerHTML += obj.name + "<br>" + obj.job + "<br>";
		      		//document.getElementById("result").innerHTML += this.responseText;   //서버응답결과를 아래div에 넣을꺼임
	    		}*/
	    		
		    } else {
		    	document.getElementById("result").innerHTML = xhttp.status + " , " + xhttp.statusText;
		    }
	    } else {
	      	document.getElementById("result").innerHTML += "처리중";
	    }
	    	
	  };
	  //3. 요청 준비
	  var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt="
			  	+ document.getElementById("name").value;
	  xhttp.open("GET", url, true); //txt, html, json 다 들어갈 수 있음  "./server/memberInfo.jsp"
	  //4. 요청 시작
	  xhttp.send();
	}
</script>
</head>
<body>
	<input type="text">
	<input type="text" id="name">
	<button type="button" onclick="loadDoc()">검색</button>
	<div id="result"></div>
</body>
</html>