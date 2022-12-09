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

PreparedStatement ps=con.prepareStatement("select * from emscrud where name=?"); 
ps.setString(1,name); 

ResultSet rs=ps.executeQuery(); 

ResultSetMetaData rss=rs.getMetaData(); 
out.print("<table border='1'>"); 

int n=rss.getColumnCount();   

for(int i=1;i<=n;i++)     
  
out.println("<td> <font color=blue size=3> "+"<br>" 
+rss.getColumnName(i)); 
  
 out.println("<tr>"); 
  
 if(rs.next()) 
 { 
 for(int i=1;i<=n;i++) 
   
 out.println("<td><br> "+rs.getString(i)); 
 out.println("<tr>"); 
 } 
 out.println("</table> </body> </html>"); 
 con.close();  } 
catch(Exception ex) 
{ 
 out.println(ex); 
}




%>
</body>
</html>