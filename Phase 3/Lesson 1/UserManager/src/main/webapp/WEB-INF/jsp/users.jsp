<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<style>
	div {
		text-align: center;
		margin-top: 100px;
	}
	table, th, td {
		border: 1px solid black;
		margin: auto;
		border-color: coral;
	}
</style>
<body>
	<div>
		<h2>Users</h2>
		<table>
			<tr><th>ID</th><th>Name</th><th>Email</th><th>Password</th></tr>
			<c:forEach items="${users}" var="user" varStatus="count">
				<tr id="${count.index}">
					<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.email}</td>
					<td>${user.password}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html> 