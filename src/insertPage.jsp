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
	String name, email1, email2, password, addr1, addr2, addr3;
	name = request.getParameter("name");
	email1 = request.getParameter("email1");
	email2 = request.getParameter("email2");
	password = request.getParameter("password");
	addr1 = request.getParameter("addr1");
	addr2 = request.getParameter("addr2");
	addr3 = request.getParameter("addr3");
	
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
	
	sql = "insert into member " + 
		  "(email1, email2, password, name, addr1, addr2, addr3) " +
		  "values (" + "'" + email1 + "', '" + email2 + "', '" +
		  password + "', '" + name + "', '" + addr1 + "', '" + addr2 + "', '" + addr3+ "');";
	try {
		stmt.executeUpdate(sql);
		%>
		<center><h3 style="margin-top : 250px">회원가입이 완료되었습니다.</h3></center>
		<center><a href="mainPage.jsp">메인화면으로 가기</a></center>
		<%
	}
	catch(Exception e) {
		%>
		<center><h3 style="margin-top : 250px">회원가입에 실패하였습니다. 회원정보를 다시 확인 후, 가입해주세요</h3></center>
		<center><a href="mainPage.jsp">메인화면으로 가기</a></center>
		<%
	}
%>
	
</body>
</html>