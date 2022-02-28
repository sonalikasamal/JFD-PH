<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>
<style>
	input[type=text], input[type=date], input[type=number] {
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
	
	<%
	@SuppressWarnings("unchecked")
	HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("user");
	if (user != null) {
	%>
	<p style="text-align: center;">
		Welcome
		<%=user.get("name")%></p>
	<p style="text-align: center;"><a href="LogOut">| Logout |</a>
	<a href="AdminPage.jsp">Admin Login |</a></p>
	<%
	} else {
	%>
	<p style="text-align: center;"><a href=UserPage.jsp>User Login</a></p>
	<%
	}
	%>
	<br>
	<br>
	<div>
		<form action=FlightList method=post>
			<label for=from>From:</label>
			<input type=text name=from id=from />
			<label for=to>To:</label>
			<input type=text name=to id=to />
			<label for=departure>Departure:</label>
			<input type=date name=departure id=departure />
			<label for=travellers>Travellers:</label>
			<input type=number name=travellers id=travellers />
			<input type=submit value=Search /> <input type=reset />
		</form>
	</div>
</body>
</html>