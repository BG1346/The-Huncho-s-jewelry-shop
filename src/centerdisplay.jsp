<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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

		border-collapse : collapse;
		padding : 5px;
		background-color : black;

	}
	table {
		margin-left : 150px;
	}
	td {
		width : 400px;
		font-size : 1.0em;
	}
	th {
		font-size: 1.4em;
		width : 500px;
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
	#작성 {
		clear : both;
		border : 3px solid white;
		border-radius : 15px;
		padding-left : 20px;
		padding-right : 20px;
		padding-top : 3px;
		margin-left : 950px;
	}
	
	
	#left 
	{
		width : 100px;
		font-size : 1.5em;
	}
	#right
	{
		width : 800px;
	}
	#리스트
	{
		border : 3px solid white;
		border-radius : 15px;
		padding-left : 10px;
		padding-right : 10px;
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
		
	<form action="insertPage.jsp" method="post">
	<fieldset>
	
	<table>
	<h1 style="margin-left : 100px;">1:1문의  ></h1>
	<%
		String title="", name="", contents="", phone="";
		int id = Integer.parseInt(request.getParameter("id"));
		
		Connection con = null;
		Statement stmt = null;
		
		
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			String url = "jdbc:mysql://localhost:3306/board";
			con = DriverManager.getConnection(url, "root", "1234");
		}
		catch(Exception e) {
			out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
			out.println(e.getMessage());
			e.printStackTrace();
		}
		stmt = con.createStatement();
		String sql = "select * from faq where id = " + id;
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			title = rs.getString("title");
			name = rs.getString("name");
			contents = rs.getString("contents");
			phone = rs.getString("phone");
		}
	%>
	
	<table border="2">
	<tr>
		<td id = "left">제목</td>
		<td id = "right"><%= title %></td>
	</tr>
	<tr>
		<td id = "left">작성자</td>
		<td id = "right"><%= name %></td>
	</tr>
	<tr>
		<td id = "left">내용</td>
		<td id = "right"><%= contents %></td>
	</tr>
	<tr>
		<td id = "left">날짜</td>
		<td id = "right"><%= phone %></td>
	</tr>
	</table>
	<br><br>
	<a href="center.jsp" style="margin-left : 130px" id ="리스트">게시글 리스트 보기</a>
	</table>
	<br>
	
	</fieldset>
	
	</form>
	
</body>
</html>