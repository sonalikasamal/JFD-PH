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
	input[type=submit], input[type=reset] {
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
	p {
		color: black;
		font-size: 35px;
		font-weight: bold;
		text-align: center;
	}
</style>
</head>
<body>
	<p>
	<a style= "text-decortion: none;" href=HomePage.jsp>Flight Booking</a>
	</p>
	<br>
	<br>
	<div>
		<form action=ForgotP method=post>
			<label for=email>Email:</label>
			<input type="email" name=email id=email />
			<label for=pass>New Password:</label>
			<input type="password" name=password id=pass />
			<input type=submit value=submit /> <input type=reset />
		</form>
	</div>
</body>
</html>