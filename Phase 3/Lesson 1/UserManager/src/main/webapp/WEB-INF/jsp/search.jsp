<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
    
<html>
<style>
th {
	border-bottom: 1px solid black;
	text-align: left;
}
	input[type=text], input[type=hidden] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}
	input[type=submit], a {
		width: 50%;
		background-color: coral;
		color: white;
		padding: 12px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-decoration: none;
	}
	div, table {
		border-radius: 5px;
		background-color: #f2f2f2;
		padding: 20px;
		max-width: 300px;
		margin: auto;
	}
</style>
<body>

	<h2 style="text-align: center;">User found for id ${userSearch.id} </h2>

	
	<table>
		<tr>
			<th>ID </th>
			<th>Name </th>
			<th>Email </th>
			<th>Password</th>
		</tr>
		<tr>
			<td>${userSearch.id} </td>
			<td>${userSearch.name} </td>
			<td>${userSearch.email} </td>
			<td>${userSearch.password}</td>
		</tr>
	</table>
	<div style="margin-top: 20px;">
	<form:form action="update" method="post" commandName="update">
		<h3>Update This User?</h3>
			<p>User ID: ${userSearch.id}</p>
			<input type="hidden" name="id" id="id" value="${userSearch.id}" required/>
			<label for="name">New Name:</label><br/>
			<input type="text" name="name" id="name" value="${userSearch.name}" required/><br/>
			<label for="email">New Email:</label> <br/>
			<input type="text" name="email" id="email" value="${userSearch.email}" required/><br/>
			<label for="password">New Password:</label><br/>
			<input type="text" name="password" id="password" value="${userSearch.password}" required/><br/><br/>
			<input type="submit" value="Submit"/>
			<a href="/">Return to Menu</a>
	</form:form>
	</div>
</body>
</html>
