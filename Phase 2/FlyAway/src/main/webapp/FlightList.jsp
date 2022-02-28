<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
</head>
<body style="text-align: center;">
	<br>
	<a href=HomePage.jsp
		style="color: black; text-decoration: none; font-size: 35px; font weight: bold;">Flight
		Booking</a>
	<br>
	<br>
	<%
	@SuppressWarnings("unchecked")
	List<String[]> flights = (List<String[]>) session.getAttribute("flights");
	if (flights != null) {
	%>
	<h1>Available Flights</h1>
	<table border="1" style="margin: auto;">
		<tr>
			<th>Flight_No</th>
			<th>Name</th>
			<th>Time</th>
			<th>Price</th>
			<th>Avl_Seats</th>
			<th>Book now</th>
		</tr>
		<%
		for (String[] flight : flights) {
		%>
		<tr>
			<td><%=flight[0]%></td>
			<td><%=flight[1]%></td>
			<td><%=flight[2]%></td>
			<td><%=flight[3]%></td>
			<td><%=flight[4]%></td>
			<td><a href=PaymentPage.jsp>Click Here</a></td>
		</tr>
	</table>
	
	<%
	}
	%>
	<%
	} else {
	%>
	<h1>There are no available flights</h1>
	<%
	}
	%>
</body>
</html>