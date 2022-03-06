<!DOCTYPE html>
<html>
<style>
	input[type=text] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}
	input[type=submit], .btn {
		width: 49%;
		background-color: coral;
		color: white;
		padding: 12px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-decoration: none;
	}
	div {
		border-radius: 5px;
		background-color: #f2f2f2;
		padding: 20px;
		max-width: 300px;
		margin: auto;
	}
</style>
<body>
	<h3 style="text-align: center; margin-top: 150px; margin-bottom: 50px;">Spring Application to Search For a Specific User and Updating the User Information</h3>
	<div>
		<form action="search/{id}" method="post">
			<label for="id-num">Enter ID Number: </label>
			<input name="id" type="text" id="id" required/><br><br>
			<a class="btn" href="users">List of Users</a>
			<input name="Submit" type="submit"/>
		</form>
	</div>
</body>
</html>
