<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	input[type=text], input[type=email], input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}
	input[type=submit], input[type=reset], .btn {
		width: 34%;
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
	<h2 style="text-align: center;">User Registration</h2>
	<div>
		<form action=UserRegistration method=post>
			<label for=name>Name:</label>
			<input type="text" name=name id=name />
			<label for=email>Email:</label>
			<input type="email" name=email id=email />
			<label for=pass>Password:</label>
			<input type="password" name=password id=pass />
			<label for=phno>Phone No:</label>
			<input type="text" name=phno id=phno />
			<label for=adno>Aadhaar No:</label>
			<input type="text" name=adno id=adno />
			<a class="btn" href ="Flyaway.jsp">Home Page</a>
			<input type=submit value=submit />
			<input type=reset />
		</form>
	</div>
</body>
</html>