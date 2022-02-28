<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
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
			<th>Person</th>
			<th>Total Price</th>
			
		</tr>
		<%
		for (String[] flight : flights) {
		%>
		<tr>
			<td><%=flight[0]%></td>
			<td><%=flight[1]%></td>
			<td><%=flight[2]%></td>
			<td><%=flight[3]%></td>
			<td><%=flight[5]%></td>
			<td><%=flight[6]%></td>
		</tr>
	</table>
	<br>
	<a href=DebitCard.html>Click here to Payment</a>
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