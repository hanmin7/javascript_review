<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.col {
	width: 40%;
	height: 400px;
	float: left;
	border: 1px solid gray;
}
.col div,h3 { 
	margin: 10px;
}

label { 
	display : inline-block; 
	width : 100px;
	text-align: right;
}
span {display : inline-block;  
	  width : 100px;}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	//버튼 클릭 이벤트 작성

</script>
</head>
<body>
	<div class="col">
		<h3>회원목록</h3>
		<div>
			<span>hong</span>
			<span>홍길동</span>
			<button type="button">선택</button>
		</div>
		<div>
			<span>kim</span>
			<span>김기자</span>
			<button type="button">선택</button>
		</div>
		<div>
			<span>choi</span>
			<span>최기자</span>
			<button type="button">선택</button>
		</div>
	</div>
	<div class="col">
		<h3>상세보기</h3>
		<form method="post" name="frm" id="frm" >		      
			<div style="text-align: right;">
				<button type="reset">초기화</button>
				<button type="button">추가</button>
				<button type="button">저장</button>
				<button type="button">삭제</button>
			</div>
			<div>
				<label for="id">아디</label>
				<input name="id" id="id">
			</div>
			<div>
				<label for="pw">패스워드</label>
				<input id="pw" name="pw">
			</div>
			<div>
				<label for="gender">성별</label> 
				<input type="radio" name="gender" value="남">남
				<input type="radio" name="gender" value="여">여
			</div>
			<div>
				<label for="job">직업</label> 
				<select name="job" id="job">
					<option value="">선택</option>
					<option value="program">프로그래머</option>
					<option value="degin">디자이너</option>
				</select>
			</div>
			<div>
				<label for="reason">가입이유</label>
				<textarea id="reason" name="reason" cols="40" rows="5"></textarea>
			</div>
			<div>
				<label for="mailyn">메일수신여부</label> 
				<input type="checkbox" name="mailyn" value="Y">
			</div>
			<div>
				<label for="mailyn">가입일자</label> 
				<input type="text" name="regDate" disabled="disabled">
			</div>			
		</form>	
	</div>
</body>
</html>