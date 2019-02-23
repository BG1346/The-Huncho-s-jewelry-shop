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
		border : none;
	}
	table, td, th {
		border : 1px solid white;
		margin-left : 50px;
		border-collapse : collapse;
		padding : 5px;
		background-color : black;
		height : 50px;
	}
	table {
		float : left;
		font-size : 1.5em;
		
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
		margin-left : 50px;
	}
	
	fieldset {
		width : 1170px;
	}
	#wid {
		width : 100px;
	}
	</style>
	
</head>
<body>
	<div id = "main">
		<div id = "login">
			<ul>
				<a href = ""><li>고객센터</li></a>
				<a href = ""><li>장바구니</li></a>
				<a href = "memberpage.jsp"><li>회원가입</li></a>
				<a href = ""><li>로그인</li></a>
			</ul>
		</div>
		<header>
			<center><a href="mainPage.jsp" target="_self" ; id = "HUNCHO"><h1>The Huncho's Jewerly</h1></a></center>
		</header>
	
	<h1>고객건의</h1>
	<form action="centerInsert.jsp" method="post">
		<table border="2">
			<tr>
				<td id="wid">제목</td>
				<td><input type="text" name="title" size="60"></td>
			</tr>
			<tr>
				<td id="wid">이름</td>
				<td><input type="text" name="name" size="10"></td>
			</tr>
			<tr>
				<td id="wid">내용</td>
				<td><textarea name="contents" cols="53" rows="20"></textarea></td>
			</tr>
			
			<tr>
				<td id="wid">연락처</td>
				<td><input type="text" name="phone" size="20"></td>
			</tr>
		</table>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<input type="submit" value="게시글 등록" id = "버튼" ><br>
		<input type="reset" value="다시 쓰기" id = "버튼">
		
	</form>
	


	<br>
	
</body>
</html>














<html>
<head>
	<title>게시글 입력</title>
</head>
<body>
	
</body>
</html>