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
String gender=request.getParameter("gender");
String mobileno=request.getParameter("mobileno");
String country=request.getParameter("country");
String state=request.getParameter("state");
String address=request.getParameter("address");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mjdbc", "mjdbc");
	PreparedStatement ps=con.prepareStatement("insert into emscrud values(?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, password);
	ps.setString(3, email);
	ps.setString(4, gender);
	ps.setString(5, mobileno);
	ps.setString(6, country);
	ps.setString(7, state);
	ps.setString(8, address);
	int i=ps.executeUpdate();
	if(i==1)
		  out.print(" "+i+" Record is Successfully Inserted");
		else
			out.print(" "+i+" Record Insertion Failed");
	con.close();
}
	catch(Exception e) {
		System.out.println(e);
	}


%>
</body>
</html>