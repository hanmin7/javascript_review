<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberAll</title>
</head>
<body>
<%@include file="../menu.jsp" %>

	<h3 class="page_title">회원 전체조회</h3>
	<ul class="search">
		<li>메일수신여부</li>
		<li>성별</li>
		<li><button type="button">검색</button></li>
	</ul>

	<table border="1" id="members">
		<thead>
			<tr>
				<th>ID</th>
				<th>PW</th>
				<th>JOB</th>
				<th>가입동기</th>
				<th>성별</th>
				<th>메일수신여부</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
				<a href="memberSelect.jsp">Chichi</a>
				</td>
				<td>1234</td>
				<td>프로그래머</td>
				<td>프로그램스터디</td>
				<td>여</td>
				<td>yes</td>
			</tr>
			<tr>
				<td>
				<a href="memberSelect.jsp">Eve</a>
				</td>
				<td>12342</td>
				<td>프로그래머</td>
				<td>프로그램스터디2</td>
				<td>남</td>
				<td>yes</td>
			</tr>
		</tbody>
	</table>
</body>
</html>