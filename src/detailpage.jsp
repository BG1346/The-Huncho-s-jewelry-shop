<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<link type = "text/css" rel = "stylesheet" href = "Shared.css">
	<style>
		p {
			width : 300px;
			word-wrap : break-word;
			color : white;
		}
		footer {
			padding : 20px;
			clear : both;
			color : white;
		}
		#aside1 {
			float : left;
			width : 300px;
			
		}
		#aside1 th {
			text-align : right;
			padding-top : 10px;
			padding-bottom : 10px;
			padding-right : 20px;
			width : 300px;
			font-size : 2em;
			border-top : 1px solid white;
			border-bottom : 1px solid white;
		}
		section	{
			
			width : 1500px;
			float : left;
			background-color : black;
		}
		section table {
			
			margin-left : 200px;
			margin-top : 100px;
			
		}
		section td {
			width : 300px;
			height : 300px;
			text-align : left;
			
		}
		#상품설명 {
			width : 500px;
			text-align : center;
			font-size : 2em;
			
		}
		#버튼1 {
		width : 220px;
		height : 60px;
		background-color : black;
		color : white;
		margin-left : 10px;
		font-size : 0.8em;
	}

	#제품정보2
	{
		margin-left :75px;
	}
	#제품정보3 {
		text-align : center;
		font-size : 2em;
		width : 1200px;
	}
	#공백 {
		border : 10px solid white;
		border-radius : 100px;
		background-color : gold;
		padding-top : 10px;
		margin-top : 500px;
		letter-spacing : 30px;
		margin-left : 50px;
	}
	#공백2 {
		border : 10px solid white;
		border-radius : 100px;
		background-color : gold;
		padding-top : 10px;
		margin-top : 300px;
		letter-spacing : 30px;
		margin-left : 50px;
	}
	section h1 {
		padding-left : 20px;
		padding-right : 20px;
		
		margin-top : 50px;
		font-size : 2em;
	}
	#글씨 {
		font-size : 1.5em;
	}
	#글씨2 {
		font-size : 1.5em;
	}
	#글씨3 {
		color : red;
	}
	#이미지 {
		display : inline;
		margin-top : 50px;
		margin-left : 50px;
	}
	#이미지2 {
		display : inline;
		margin-top : -50px;
	  }
	
	#위치 {
		margin-left : 50px;
		margin-top : 30px;
		width : 800px;
		
	}
	#선택3 {
		
	}
	section table {
		height : 500px;
	}
	#별정 {
		font-size : 0.5em;
		margin-top : -30px;
	}
	#구매 {
		color : gray;
	}
	#구매2 {
	
		font-size : 0.8em;
	}	
	#구매전 {
		font-size : 2em;
	}

	#보더 {
		margin-left : 100px;
		width : 1000px;
		color : white;
		border : 10px solid red;
		border-radius : 100px;
		background-color : green;
		padding-top : 10px;
		
	} 
	#관물{
		width : 500px;
		text-align : right;
		font-size : 1em;
	}
	#공유 {
		margin-top : -10px;
		margin-left : 50px;
		margin-right : 10px;
		padding-left : 10px;
		padding-top : 5px;
		padding-right : 5px;
		padding-bottom : -2px;
		font-size : 0.8em;
		border: 3px solid white;
		border-radius : 25px;
	}
	#호 {
		color : white;
		background-color : black;
		
	}
	#호1 {
		margin-top : -30px;
		margin-left : 8px;
		color : white;
		background-color : black;
	}
	#테두리 {
		border : 3px solid white;
		margin-left : 50px;
	}
	#링크 {
		text-decoration : none;
		color : white;
	}
	#링크:hover {
		color : black;
		background-color : white;
	}
	#환불 {
		width : 1400px;
		margin-left : 30px;
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
	header a 
		{
			font-size: 2em;
			line-height : 130px;
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
	#설명 {
		background-color : black;
		color : black;
		height : 300px;
		
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
	
	</style>
	
</head>
<body>
<div id = "login">
	<ul>
	<a href = "ready.html" id = "소개"><li id ="정보">고객센터</li></a>
	<a href = "ready.html" id = "소개"><li id ="정보">장바구니</li></a>
	<a href = "member.html" id = "소개"><li id ="정보">회원가입</li></a>
	<a href = "ready.html" id = "소개"><li id ="정보">로그인</li></a>
</div>
<header>
	<center><a href="mainPage.jsp" target="_self" ; id = "HUNCHO"><h1>The Huncho's Jewerly</h1></a></center>
</header>

<nav>
	<ul>
		<a href = "goodsPage.jsp?id=1" id = "소개"><li>RING</li></a>/
		<a href = "goodsPage.jsp?id=2" id = "소개"><li>NECKLACE</li></a>/
		<a href = "goodsPage.jsp?id=3" id = "소개"><li>CHAIN</li></a>/
		<a href = "ready.jsp" id = "소개"><li>ACC</li></a>/
		<a href = "ready.jsp" id = "소개"><li>EVENT</li></a>
	</ul>
</nav>

<aside id = "aside1">
	<table id="aside5">
			<tr>
				<th><a href="#위치" id="링크">제품개요</a></th>
			</tr>
			<tr>
				<th><a href="#공백" id="링크">제품정보</a></th>
			</tr>
			<tr>
				<th><a href="#공백2" id="링크">교환/환볼정책</a></th>
			</tr>
			<tr>
				<th><a href="#공백2" id="링크">관련 물품</a></th>
			</tr>
			<tr>
				<th><a href="#공백2" id="링크">상품 후기</a></th>
			</tr>
		</table>
		
		
		
</aside>
<%
		String name="", image="", price="", eval="", purchase="", surplus="";
		int id = Integer.parseInt(request.getParameter("id"));
		int kind;
		if ( id < 100 )
		{
			kind = 1;
		}			
		else if (id < 1000)
		{
			kind = 2;
			id -= 100;
		}
		else
		{
			kind = 3;
			id -= 1000;
		}
		
			
			
		
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
		if ( kind == 1 )
		{
			sql = "select * from item where id = " + id;
		}
		else if ( kind == 2 )
		{
			sql = "select * from item2 where id = " + id;
		}
		else if ( kind == 3 )
		{
			sql = "select * from item3 where id = " + id;
		}
		
		stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			name = rs.getString("name");
			image = rs.getString("image");
			price = rs.getString("price");
			eval = rs.getString("eval");
			purchase = rs.getString("purchase");
			surplus = rs.getString("surplus");
			
		}
	%>
<section>
<p id= "위치">홈 > RING > <%= name %></p>
	<table>
	<tr>
		<td>	
			<img src=<%= image %> width="300" height="300">
		<td id = "상품설명">
			<%= name %>
			 <br><span id="별정">★★★★★ <%= eval %> |  구매 <%= purchase %><span id="구매">(남은수량 <%= surplus %>개)</span></span><br><br>
			
			<span id="구매2">옵션선택</span><br>
			<select name="선택" id="호">
			<option value ="직접입력">---------------------------------- 호수 ----------------------------------</option>
			<option value ="직접입력">---------------------------------- 1호 ----------------------------------</option>
			<option value ="직접입력">---------------------------------- 2호 ----------------------------------</option>
			<option value ="직접입력">---------------------------------- 3호 ----------------------------------</option>
			</select>
			<select name="선택2" id="호1">
			<option value ="직접입력" >---------------------------------- 호수 ----------------------------------</option>
			<option value ="직접입력" >---------------------------------- 1호 ----------------------------------</option>
			<option value ="직접입력" >---------------------------------- 2호 ----------------------------------</option>
			<option value ="직접입력" >---------------------------------- 3호 ----------------------------------</option>
			</select>
			<br>
			<br>
			<input type = "submit" value="구매" id = "버튼1" >
			<input type = "submit" value="장바구니" id = "버튼1" >
		</td>
		
		
		
		<td id="관물">
		<div id="테두리">
			<h1><span id="물품">Huncho'sMembership</span> 
			<br><span id="공유">공유</span><img src="image/인스타2.jpg" width ="30" height="30">
			<img src="image/페이스북.jpg" width ="30" height="30">
			<img src="image/트위터.jpg" width ="30" height="30">
			</h1> 
		<input type ="radio" name = "warranty">Huncho's Premium Warranty Protction (훈초 프리미엄 보험):  $15.99
		</label><br>

		<input type ="radio" name = "warranty" >Warranty and Accident Protection (품질보증 보험): 1 month $12.99
		</label><br>
		<input type ="radio" name = "warranty" >Warranty and Accident Protection (품질보증 보험): 3 month $12.99
		</label><br>
		<input type ="radio" name = "warranty" >Warranty and Accident Protection (품질보증 보험): 6 month  $12.99
		</label><br>	
		</div>		
		</td>
		
		
		
		
	</tr>
	
	</table>
	
	<center><h1 id="공백">제품정보</h1></center>
	
	<img src = "image/사이즈1.jpg" id = "이미지">
	<img src = "image/사이즈3.jpg" id = "이미지2">
	<table id = "제품정보2">
	<tr>
		<td id = "제품정보3">
			<span id= "글씨2">기본제공 동일 보석감정원 기본형</span><br><span id="글씨3">(선호도 1위)</span><br>
			3부 소형 0.3ct / D / VVS1 / EX<br><br>
			<p id = "보더"><span id = "구매전">구매전에 꼭 확인하세요! </span><br></p>

기본형 다이아몬드로<br>

 중상급 품질중에서 칼라좋고 광채좋은 동일감정원<br>

3부 D칼라 VVS1 엑설런트(EX)컷팅 다이아몬드를사용합니다.<br>

우신다이아몬드, 미국 GIA다이아몬드는 옵션에서 추가선택하시면 됩니다.<br>

 

14K 화이트골드 3.1g (12호 기준)으로 싸이즈에 따라서 조금씩 달라집니다.  <br>

		</td>
	</tr>
	</table>	
			
			
	<center><h1 id="공백2">교환/환불정책</h1></center>
	<center>
	<p id="환불">
	소비자가 전자상거래 등에서 소비자 보호에 관한 법률 제 17조 1항 또는 제 3항에 /다라 청약철회를 하고 동법 제 18조 제 1항에 따라 청약철회한 물품을 판매자에게 반환하였음에도 불구하고 결제 대금의 환급이 3영업일을 넘게 지연된 경우, 소비자는 전자상거래 등에서 소비자 보호에 관한 법률 제 187조2항및 동법 시행령 제 21조 2에 따라 지연기간에 대하여 전상법 시행령으로 정하는 이율을 곱하여 산정한 지연이자("지연배상금")를 신청할 수 있습니다.주문 취소 및 결제대금의 환급신청은 "나의 쇼핑정보"에서 하실 수 있으며, 지연 배상급 신청에 대한 자세한 문의는 판매자 정보의 연락처로 해주시기 바랍니다.
	</p>
	</center>

</section>

<footer>
	<center>copyright© 2018, All right reserved.<center>
</footer>


</body>
</html>


