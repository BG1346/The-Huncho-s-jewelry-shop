<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="Shared.css">
	<style>
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
	#소개 {
		text-decoration : none;
		color : black;		
	}
	nav li 
	{
		display : inline;
		letter-spacing : 10px;
		padding-top: 3px;
		padding-left : 20px;
		padding-right : 10px;
		padding-bottom : 1px;
		font-size : 1.5em;
		color : white;
		
	}
	nav 
	{
		text-align : center;
		border : -20px;
		margin : 0px;
		margin-top : 20px;
		border : 5px solid white;
		border-top : 3px solid white;
		padding : 10px;
		border-bottom : 5px solid white;
		background-color : black;
		height : 40px;
		line-height : 1em;
	}
	#마블 
	{
		margin-left : 50px;
		text-decoration : none;
		border : 3px solid white;
	}
	#이벤트 
	{
		margin-left : 50px;
		margin-bottom : 0px;
	}
	#번호
	{
		position : relative;
		left : 1000px;
		width : 140px;
		height : 50px;
	}
	#번호 a 
	{
		border : 3px solid white;
		border-radius : 15px;
		padding-left : 20px;
		padding-right : 20px;
		font-size : 2em;
	}
	#preview 
	{	
		clear : both;
		height : 120px;
		padding-left : 90px;
		font-size : 2.5em;
	}
	#preview a 
	{
		position : relative;
		left : 800px;
		text-decoration : none;
		color : white;
		border : 3px solid white;
		padding-left : 20px;
		padding-right : 20px;
		padding-top : -20px;
		padding-bottom : -5px;
		border-radius : 25px;
		margin-top : 30px;
	}
	#상품목록 
	{
		width:200px;
		height:200px;
		float:left;
		margin-left : 70px;
		margin-top : 60px;
		margin-bottom : 50px;
	}
	#설명 
	{
		background-color : black;
		height : 150px;
	}
	fieldset 
	{
		display : inline;
		float : left;
		height : 500px;
	}
	table, td, th {
		border : 1px solid white;
		margin-left : 250px;
		border-collapse : collapse;
		padding : 5px;
		background-color : black;
		height : 50px;
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
	#버튼1 {
		width : 150px;
		height : 60px;
		background-color : black;
		color : white;
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
		
	<form action="loginInsert.jsp" method="post">
	<fieldset>
	
	<table>
	<center><h1>Login</h1></center>
	<tr>
		<th>이메일</th>
		<td><input type ="text" size="10" name = "email1"> @ <input type ="text" size="15"name = "email2">
		
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type ="password" name = "password"></td>
	</tr>
	<tr>
		<td colspan=2><center><input type = "submit" value="로그인" id = "버튼1" ></center></td>
	</tr>
		</form>
	</table>
	<br>
	</fieldset>
	</form>
	<script>
			function get() {
				var val = "준비중입니다.";
				alert(val);
				
			}
		</script>
</body>
</html>