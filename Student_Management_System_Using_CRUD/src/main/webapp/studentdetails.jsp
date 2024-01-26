<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script>
	function addUser()
	{
		document.fun.action="register";
		document.fun.submit();
	}
	function editstudents()
	{
		document.fun.action="edit";
		document.fun.submit();
	}
	function deletestudents()
	{
		document.fun.action="deletestudents";
		document.fun.submit();
		alert("User account deleted auccessfully");
	}
	
</script>
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
		margin-left: 47%;
	}

</style>
</head>
<body style="background-color: rgb(121, 192, 209)">
<h1 background-color: Azure> Success</h1>
<form name="fun">
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
		
	<c:forEach items="${stud}" var="s">
	<tr>
	<td> <input type="radio" name="sid" value="${s.sid}"> </td>
	<td> ${s.sid } </td>
	<td> ${s.sname } </td>
	<td> ${s.uname } </td>
	<td> ${s.password }</td>
	<td> ${s.marks } </td>
	<td> <input type="button" onclick="addUser()" value="ADD"></td>
	<td> <input type="button" onclick="editstudents()" value="EDIT"></td>
	<td> <input type="button" onclick="deletestudents();" value="DELETE"></td>
	</tr>
	</c:forEach>

</table></form>
</body>
</html>