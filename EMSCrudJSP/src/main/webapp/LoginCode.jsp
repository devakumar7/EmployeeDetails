<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String name=request.getParameter("uname"); 
		String password=request.getParameter("pwd"); 
		try 
		{ 
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mjdbc", "mjdbc");
		PreparedStatement ps=con.prepareStatement("select * from emscrud where name=? and password=?"); 
		
		ps.setString(1, name); 
		ps.setString(2, password); 
		 
		ResultSet rs=ps.executeQuery(); 
		
		if(rs.next())  
			response.sendRedirect("emphome.jsp");
		else 
		out.print("Invalid Email or Password"); 
		con.close(); 
		} 
		catch(Exception ex) 
		{ 
		out.print(ex);
		}




%>
</body>
</html>