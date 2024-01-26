<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<style>
	table,td,tr,th
	{
		border-collapse: collapse; 
		text-align: center;
		border:2px solid black;
		margin: auto;
		padding: 20px; 
	}
	
	table
	{
		margin-top: 5%;
		background-color: azure;
	}
	h1
	{
		text-align: center;	
	}
	
</style>
</head>
<body style="background-color: rgb(121, 192, 209)">
<h1> Edit Student's data Here</h1>
<form action="update">
		<table style="border: 2 px solid black; width: 400px">
	
<tr>	
	<td>Id: </td>
	<td><input type="text" name="sid" value="${data.sid}"> </td>
	</tr>
<tr>
	<td>Name: </td>
	<td><input type="text" name="sname" value="${data.sname}"> </td>
</tr>
<tr>
	<td>User Name: </td>
	<td><input type="text" name="uname" value="${data.uname}"> </td>
</tr>
<tr>
	<td>Password:</td> 
	<td><input type="text" name="password" value="${data.password}" > </td>
</tr>
<tr>
	<td><input type="submit" value="UPDATE"></td>
</tr>	
</table>
</form>
</body>
</html>