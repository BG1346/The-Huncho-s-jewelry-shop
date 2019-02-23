<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
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
		margin-bottom : -22px;
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
	table 
	{
		float : left;
	}
	form
	{
		float : left;
	}

	</style>
	
</head>
<body onload = "nn()">
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
		<nav>
			<ul>
				<a href = "goodsPage.jsp?id=1" id = "소개"><li>RING</li></a>/
				<a href = "goodsPage.jsp?id=2" id = "소개"><li>NECKLACE</li></a>/
				<a href = "goodsPage.jsp?id=3" id = "소개"><li>CHAIN</li></a>/
				<a href = "" id = "소개" onclick="get()"><li>ACC</li></a>/
				<a href = "" id = "소개" onclick="get()"><li>EVENT</li></a>
			</ul>
		</nav>
		<span style="margin-left : 90px; font-size : x-large;">총 <span id ="수량"></span>개의 상품이 있습니다.</span>
		<section>
		
		<%
		String name="", image="", price="";
		int id = Integer.parseInt(request.getParameter("id"));
		int count = 0;
		int ident;
		
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
		
		String sql = "";
		if( id == 1)
		{
			sql = "select * from item order by id asc ";
			ident = 0;
		}
		else if( id == 2)
		{
			sql = "select * from item2 order by id asc ";
			ident = 100;
		}
		else
		{
			sql = "select * from item3 order by id asc ";
			ident = 1000;
		}
		
		stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);

		
			if(rs != null) {
				while(rs.next())
				{
					count++;
					name = rs.getString("name");
					image = rs.getString("image");
					price = rs.getString("price");
		%>
		
			<form action="detailpage.jsp?id=<%= count + ident %>" method="post">
			<table id="상품목록">
			<tr>
				<th><a href="detailpage.jsp?id=<%= count + ident %>"><img src=<%= image %> width="200" height="200" id = "이미지"></a></th>
			</tr>
			<tr>
				<th id ="설명"><p ><%= name %></p><br>
				<center>가격 : <%= price %></center>
				<input type = "submit" value="구매" id = "버튼" >
				<input type = "submit" value="장바구니" id = "버튼" >
				</th>
			</tr>
			</table>
			</form>
			<%
				}
			}
		%>
			
			<script>
			function get() {
				var val = "준비중입니다.";
				alert(val);
				
			}
			function nn() {
				document.getElementById("수량").innerHTML = <%= count %>;
			}
		</script>
			
			

</section>
</body>
</html>