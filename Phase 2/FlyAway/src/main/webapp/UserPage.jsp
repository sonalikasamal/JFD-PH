<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	input[type=email], input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}
	input[type=submit], input[type=reset]{
		width: 49%;
		background-color: coral;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-decoration: none;
	}
	div {
		border-radius: 5px;
		background-color: #f2f2f2;
		padding: 20px;
		width: 30%;
		margin: auto;
	}
</style>
</head>
<body>

	<h1 style="text-align: center;">Search Flights</h1>
	<h2 style="text-align: center;">User Login</h2>
	<div>
		<form action=UserLogin method=post>
			<label for=email>Email:</label>
			<input type="email" name=email id=email />
			<label for=pass>Password:</label>
			<input type="password" name=password id=pass />
			<input type=submit value=submit />
			<input type=reset />
		</form>
	</div>
	<br>
	<br>
	<p style="text-align: center;"><i>New User-Create account</i></p>
	<h4 style="text-align: center;">
		<a href=UserRegistration.jsp style="font-size: 25; color: red;">|
			Create Account |</a> <a href=Flyaway.jsp
			style="font-size: 25; color: red;">Home Page |</a>
	</h4>
	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: green; text-align: center;"><%=message%></p>
	<%
	session.setAttribute("message", null);
	}
	%>
</body>
</html>