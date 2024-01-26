<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>

<style>
	table,td,tr,th
	{
		 border-collapse: collapse; 
		text-align: center;
		border:2px solid black;
		margin: auto;
		padding: 10px; 
	}
	
	table
	{
		margin-top: 5%;
		background-color: azure;
	}
	
	h1
	{
		margin-left: 47%;
	}

</style>

<script>
	function addUser()
	{
		document.fn.action="register";
		document.fn.submit();
	}
	function editUser()
	{
		document.fn.action="edit";
		document.fn.submit();
	}
	function deleteUser()
	{
		document.fn.action="delete";
		document.fn.submit();
		alert("User account deleted auccessfully");
	}
	function action()
	{
		document.fn.action="login";
		document.fn.submit();
	}
</script>


</head>
<body style="background-color: rgb(121, 192, 209)">
<h1 background-color: Azure> Success</h1>
<form name="fn">
<table>
	<tr>
		<th colspan=9> Student's Information </th>
	</tr>
	<tr>
		<th> SELECT </th>
		<th> ID	</th>  
		<th> Name </th>
		<th> User Name </th>
		<th> Password </th>
		<th> Marks </th>
		<th colspan=3> ACTION </th> 
	</tr>
		
	<c:forEach items="${data}" var="s">
	<tr>
	<td> <input type="radio" name="sid" value="${s.sid}"> </td>
	<td> ${s.sid } </td>
	<td> ${s.sname } </td>
	<td> ${s.uname } </td>
	<td> ${s.password }</td>
	<td> ${s.marks } </td>
	<td> <input type="button" onclick="addUser()" value="ADD"></td>
	<td> <input type="button" onclick="editUser()" value="EDIT"></td>
	<td> <input type="button" onclick="deleteUser()" value="DELETE"></td>
	</tr>
	</c:forEach>

</table></form><br><br>
<a href="Home" style="margin-left: 47%">Back to Home Page</a>


</body>
</html>