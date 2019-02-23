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
	String email1, email2, password;
	email1 = request.getParameter("email1");
	email2 = request.getParameter("email2");
	password = request.getParameter("password");
	
	
	
			Connection con = null;
			Statement stmt = null;
			try {
				Class.forName("org.gjt.mm.mysql.Driver");
				String url = "jdbc:mysql://localhost:3306/board";
				con = DriverManager.getConnection(url, "root", "1234");
			} catch(Exception e) {
				out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
				out.println(e.getMessage());
				e.printStackTrace();
			}
			stmt = con.createStatement();
			String sql = "select * from member order by id asc ";
			ResultSet rs = stmt.executeQuery(sql);
			
			boolean log = false;
			if(rs != null) {
				while(rs.next()) {
					int id = Integer.parseInt(rs.getString("id"));
						if(rs.getString("email1").equals(email1))
						{
							if(rs.getString("email2").equals(email2))
							{
								if(rs.getString("password").equals(password))
								{
									log = true;
								}
							}
						}
				}
			}
			if(log == true)
			{
				%>
					<center style = "margin-top : 100px; font-size : 2em;">로그인에 성공하였습니다.</center>
					<center><a href = "mainPage.jsp"style = "margin-top : 100px; font-size : 1.5em;"><메인 페이지로 가기></a></center>
				<%
			}
			else
			{
				%>
					<center style = "margin-top : 100px; font-size : 2em;">로그인에 실패하였습니다.</center>
					<center><a href = "mainPage.jsp"style = "margin-top : 100px; font-size : 1.5em;"><메인 페이지로 가기></a></center>
				<%
				
			}
		%>
	
</body>
</html>