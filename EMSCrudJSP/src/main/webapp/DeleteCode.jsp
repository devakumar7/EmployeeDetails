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
try 
		  { 
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","mjdbc","mjdbc"); 
	PreparedStatement ps=con.prepareStatement("delete from emscrud where name=?");
	ps.setString(1,name); 
	int i=ps.executeUpdate(); 
	if(i==1)
	  out.print(" "+i+" Record is Deleted");
	else
		out.print(" "+i+" Record Deletion Failed");
	con.close();  
	} 
	  catch(Exception ex) 
	  { 
	   System.out.println(ex); 
	  } 
%>



</body>
</html>