<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<link type="text/css" rel="stylesheet" href="Shared.css">
</head>
<body>
<% 
	String image, name, price;
	image = request.getParameter("image");
	name = request.getParameter("name");
	price = request.getParameter("price");

	
	
	ResultSet rs = null;
	String sql;
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
	
	sql = "insert into cart " + 
		  "(name, image, price) " +
		  "values (" + "'" + name + "', '" + image + "', '" +
		  price + "');";
	try {
		stmt.executeUpdate(sql);
	}
	catch(Exception e) {
		out.println("데이터베이스 삽입 연산이 실패하였습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
	<center><h3 style="margin-top : 250px"><h3>장바구니에 등록되었습니다.</h3></center>
	<center><a href="cart.jsp">장바구니로 가기</a></center>
</body>
</html>