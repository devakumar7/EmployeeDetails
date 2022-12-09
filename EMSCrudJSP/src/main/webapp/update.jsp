<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink"> 
<center> 
<h1 style="color:green">EMPLOYEE MANAGEMENT SYSTEM</h1> 
<a href="home.html">Home</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="contact.html">Contact</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="empreg.html">Register</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="login.html">Login</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<hr><p></p> 


<table border="2">
<form action="UpdateCode.jsp" method="post">
<h2>New Employee Register Here</h2>
<tr><td>Name</td>
<td><input type="text" name="uname"></td></tr>
<tr><td>Password</td><td><input type="password" name="pwd"></td></tr>
<tr><td>Email</td> <td><input type="email" name="mail"></td></tr>
<tr><td>Mobile No</td> <td><input type="tel" name="mobileno"></td></tr>
<tr><td>Address</td> <td><input type="text" name="address"></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Update"></td></tr> 
</form>
</table>
</body>
</html>