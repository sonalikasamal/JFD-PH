<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authentication Page</title>
<style>
	input[type=text], input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}
	input[type=submit] {
		width: 100%;
		background-color: coral;
		color: white;
		padding: 12px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-decoration: none;
		margin: 8px 0;
	}
	div {
		border-radius: 5px;
		background-color: #f2f2f2;
		padding: 20px;
		max-width: 300px;
		margin: auto;
	}
</style>

</head>
<body>
<center>
<h2>Login Page</h2>
<h3> Welcome to the authentication page</h3>
</center>
<div>
<form:form action="Auth" method="post" commandName="login">
	<label for="username"> Username:</label>
	<input name="username" id="username" type="text" placeholder="Username" required/>
	<br><br>
	<label for="password">Password:</label>
	<input name="password" id="password" type="password" placeholder="Password" required/>
	<br><br>
	<input type="submit" name="Submit"/>
</form:form>
</div>
</body>
</html>