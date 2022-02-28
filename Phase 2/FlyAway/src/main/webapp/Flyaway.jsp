<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}
.container {
	background-image: url(./plane.jpg);
	height: 100vh;
	background-size: cover;
	background-position: unset;
}
h2, .menu {
	text-align: center;
	padding: 50px 0 0 0;
}
.menu1, .menu2, .menu3 {
	background-color: coral;
	padding: 15px;
	border-radius: 5px;
	text-decoration: none;
}
</style>
<body>
	<div class="container">
		<h2>Welcome to FlyAway</h2>
		<div class="menu">
			<a class="menu1" href="UserRegistration.jsp">User Registration</a>
			<a class="menu2" href="UserPage.jsp">Search Flight</a>
			<a class="menu3" href="AdminPage.jsp">Admin Login</a>
		</div>
	</div>
	<%
	String message = (String) session.getAttribute("message");
	if (message != null) {
	%>
	<p style="color: green;"><%=message%></p>
	<%
	session.setAttribute("message", null);
	}
	%>
</body>
</html>