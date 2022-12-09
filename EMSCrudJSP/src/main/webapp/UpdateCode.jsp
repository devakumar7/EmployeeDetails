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
String email=request.getParameter("mail");
String mobileno=request.getParameter("mobileno");
String address=request.getParameter("address");
try 
  { 
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","mjdbc","mjdbc"); 
PreparedStatement ps=con.prepareStatement("update emscrud set password=?, email=?, mobileno=?, address=? where name=?");

ps.setString(1, password);
ps.setString(2, email);
ps.setString(3, mobileno);
ps.setString(4, address);
ps.setString(5, name);
int i=ps.executeUpdate(); 
if(i==1)
out.print(" "+i+" Record is Successfully Updated");
else
out.print(" "+i+" Record Updation Failed");
con.close();  
} 
catch(Exception ex) 
{ 
System.out.println(ex); 
} 







%>
</body>
</html>