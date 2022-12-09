<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body bgcolor="pink"> 
<center> 
<h1 style="color:green">EMPLOYEE MANAGEMENT SYSTEM</h1> 
<a href="home.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="contact.jsp">Contact</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="empreg.jsp">Register</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="login.jsp">Login</a>&nbsp;&nbsp;&nbsp;&nbsp; 
<hr><p></p> 


<table border="5">
<form action="Register.jsp" method="post">
<tr><td>Name</td>
<td><input type="text" name="uname"></td></tr>
<tr><td>Password</td><td><input type="password" name="pwd"></td></tr>
<tr><td>Email</td> <td><input type="email" name="mail"></td></tr>
<tr><td>Gender</td> <td><input type="radio" name="gender" value="Male">Male
<input type="radio" name="gender" value="Female">Female</td></tr>
<tr><td>Mobile No</td> <td><input type="tel" name="mobileno"></td></tr>
<tr><td>State</td> <td><select name="state" >
<option value="Telangana">Telangana</option>
<option value="AndhraPradesh">AndhraPradesh</option></select></td></tr>
<tr><td>Country</td> <td><select name="country" >
<option value="India">India</option>
<option value="USA">USA</option>
</select></td></tr>
<tr><td>Address</td> <td><input type="text" name="address"></td></tr>
<tr><td align="right"><input type="submit" value="Register"></td><td align="center"><input type="reset" value="Reset"></td></tr> 
</form>
</table>
</body>
</html>