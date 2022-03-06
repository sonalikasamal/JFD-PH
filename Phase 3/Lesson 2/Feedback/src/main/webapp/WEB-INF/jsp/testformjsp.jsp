<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring test App</title>
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
	input[type=submit], input[type=range] {
		width: 100%;
		background-color: coral;
		color: white;
		padding: 12px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-decoration: none;
		margin: 8px 0;
	}
	div {
		border-radius: 5px;
		background-color: #f2f2f2;
		padding: 20px;
		max-width: 300px;
		margin: auto;
	}
</style>
</head>
<body>
<div>
<form:form action="/test_form" method="post" commandName="testUser">
  <label for="user">User:</label><br>
  <input type="text" id="user" name="user" placeholder="John"><br>
  <label for="comments">Comments:</label><br>
  <input type="text" id="comments" name="comments" placeholder="Doe"><br><br>
  <label for="rating">Rating:</label><br>
  
  <input type="range" name="rating" id="rating" min="0" max="10" value="5" class="slider">
  <input type="submit" value="Submit">
</form:form>
</div> 
</body>
</html>