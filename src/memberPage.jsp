<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="Shared.css">
	<style>
	#버튼 
	{
		background-color : black;
		color : white;
		margin : 10px;
	}
	html
	{
		color : white;
	}
	#login li	
	{
		float : right;
		display : inline;
		padding-left : 40px;
		padding-right : 40px;
		border-bottom : 1px solid white;
		margin-bottom : 10px;				
	}
	header 
	{
		border : 5px solid white;
		clear : both;
		background-image : url('image/새 단장.jpg');
		background-color : black;
		height : 200px;
		margin-top : -22px;
		color : white;
	}
	header a 
	{
		font-size: 2em;
		line-height : 130px;
	}
	fieldset 
	{
		display : inline;
		float : left;
	}
	table, td, th {
		border : 1px solid white;
		margin-left : 250px;
		border-collapse : collapse;
		padding : 5px;
		background-color : black;
		margin-top : 50px;
	}
	table {
		float : left;
	}
	td {
		width : 400px;
		font-size : 1.0em;
	}
	th {
		font-size: 1.4em;
		width : 250px;
	} 
	#asd{
		color : black;
		display : inline;
	}
	iframe {
		border : none;
		margin-left : 50px;
		margin-top : 50px;
		display : inline;
		float : left;
	}
	#버튼2 {
			width : 150px;
			height : 60px;
			background-color : black;
			color : white;
			margin-left : 30px;
			margin-top : 10px;
			margin-bottom : 10px;
			font-size : 1.5em;
		}
	#버튼1 {
		width : 150px;
		height : 60px;
		background-color : black;
		color : white;
		margin-left : 190px;
		margin-top : 10px;
		margin-bottom : 10px;
		font-size : 1.5em;
	}
	
	#약관 {
		margin-left : 250px;
	}
	fieldset {
		width : 1170px;
	}
	</style>
	
</head>
<body>
	<div id = "main">
		<div id = "login">
			<ul>
				<a href = "center.jsp"><li>고객센터</li></a>
				<a href = "" onclick="get()"><li>장바구니</li></a>
				<a href = "memberPage.jsp" id ="회원"><li>회원가입</li></a>
				<a href = "login.jsp"><li>로그인</li></a>
			</ul>
		</div>
		<header>
			<center><a href="mainPage.jsp" target="_self" ; id = "HUNCHO"><h1>The Huncho's Jewerly</h1></a></center>
		</header>
		
	<form action="insertPage.jsp" method="post">
	<fieldset>
	<table>
	<tr>
		<th>이메일</th>
		<td><input type ="text" size="10" name = "email1" id = "email" onchange = "check()" > @ <input type ="text" size="15"name = "email2">
		<span id ="idcheck"></span></td>
		
	</tr>
		<th>비밀번호</th>
		<td><input type ="password" name = "password" id = "1pw"></td>
	</tr>
	<tr>
		<th>비밀번호 확인</th>
		<td><input type ="password" id = "2pw" ><span id = "confirmResult" style = "color : white"></span></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type ="text" size="10" name = "name"></td>
	</tr>
	
	<tr>
		<th>주소</th>
		<td><label for="SKT">
		우편번호<br><input type ="text" size="5" name = "addr1" onchange = "numcheck()"> - <input type ="text" size="5" name = "addr2" onchange = "numcheck()"><br>
		상세주소<br>
		<input type ="text" size = "40" name = "addr3">
	</tr>
	</tr>
		<th>약관동의</th>
		<td><label for="SKT">
		<input type ="radio" id = "SKT">HUNCHO 이용약관</label>
		<a href="agreement of utilizationpage.jsp" target="iframe1"><input type = "button" value="약관보기" id = "버튼" ></a>
		<br>
		<label for = "KT">
		<input type ="radio" id = "KT">전자금융거래 이용약관</label>
		<a href="agreement of utilizationpage.jsp" target="iframe1"><input type = "button" value="약관보기" id = "버튼" ></a>
		<br>
		<label for = "LG">
		<input type ="radio" id = "LG">개인정보 수집 및 이용</label>
		<a href="agreement of utilizationpage.jsp" target="iframe1"><input type = "button" value="약관보기" id = "버튼" ></a>
		</td>
	</tr>
	<tr>
		<td colspan = "2"><input type = "submit" value="가입하기" id = "버튼1" ></h1><input type = "reset" value="다시하기" id = "버튼2" ></td>
	</tr>
		</form>
	</table>
	<iframe width = 700px" height = "600px" name = "iframe1" id="약관"></iframe>
	
	<br>
	</fieldset>
	</form>
	<script>
		function get() {
				var val = "준비중입니다.";
				alert(val);
				
			}
		function check() {
			if( document.getElementById("name").value < 5 )
			{
				document.getElementById("idcheck").innerHTML = <p>5자 이상으로 해주세요<p>;
			}
		}
	
		</script>
</body>
</html>