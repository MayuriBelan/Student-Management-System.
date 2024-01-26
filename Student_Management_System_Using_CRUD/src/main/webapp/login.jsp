<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
	table,tr,td
	{
		border: 2px solid black;
		border-collapse: collapse;
		padding: 10px;
		text-align: left;
	}
	body
	{
		background-color: skyblue;
	}
	#divtable{
            margin: auto;
            width:400px;
           
        }
</style>
</head>
<body>
<form action="loginsuccess">
<h1 style="text-align: center"> Welcome to Student Management System </h1>

  <div id="divtable">
<table> 
<tr>
	  <td><label>UserName:</label></td>
      <td><input type="text" placeholder="Username" name="uname"/></td>	
</tr>
<tr>
    	<td><label>Password:</label></td>
        <td><input type="text" placeholder="Password" name="password"></td>
</tr>
<tr>
	<td><input type="submit" value="LOGIN"/></td>
       <td><input type="reset"/></td>
</tr>
<tr>
	<td> <h4> New User??</h4></td>
	<td> <a href="register"> REGISTER Here</a> </td>
</tr>


</table>
</form>
</body>
</html>