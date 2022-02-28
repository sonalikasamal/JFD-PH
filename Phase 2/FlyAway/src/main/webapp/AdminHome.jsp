<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<style>
	input[type=text], input[type=date], input[type=time] {
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
	p {
		color: black;
		text-decoration: none;
		font-size: 35px;
		font-weight: bold;
		text-align: center;
	}
</style>
<body>
	<p><a>Flight Booking</a></p>
	<h1 style="text-align: center;">Insert New Flight Details</h1>
	<div>
		<form action=InsertFlight method=post>
			<label for=Flight_no>Flight_no:</label>
			<input type="text" name=Flight_No id=Flight_No />
			<label for=name>Name:</label>
			<input type="text" name=name id=name />
			<label for=from>From:</label>
			<input type="text" name=from id=from />
			<label for=to>To:</label>
			<input type="text" name=to id=to />
			<label for=departure>Departure:</label>
			<input type="date" name=departure id=departure />
			<label for=time>Time:</label>
			<input type="time" name=time id=time />
			<label for=price>Price:</label>
			<input type="text" name=price id=price />
			<label for=Avl_Seats>Avl_Seats:</label>
			<input type="text" name=Avl_Seats id=Avl_Seats />
			<input type=submit value=submit /> <input type=reset />
			<a class="btn" href="Flyaway.jsp">Home Page</a>
		</form>
	</div>

	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: red;"><%=message%></p>
	<%
	session.setAttribute("message", null);
	}
	%>
</body>
</html>