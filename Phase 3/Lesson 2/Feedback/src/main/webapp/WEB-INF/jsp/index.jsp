<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<style>
	a {
		width: 49%;
		background-color: coral;
		color: white;
		padding: 12px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-decoration: none;
		margin: 8px 0;
	}
	div, p, h2 {
		text-align: center;
		margin-top: 50px;
	}
</style>
</head>
<h2>Landing Page</h2>
<body>
<div>
<a href="test_form">Test Form</a>
<a href="feedback">See all Feedbacks</a>
</div>
<!-- Can only use these (below) if you have jersey dependency -->

<p>Can only use these link below if you have the jersey dependency added to this dependency.
Jersey has been added to this project so it can use the links below.</p>
<div>
<a href="feedbacks">See all feedbacks as Json format</a>
<a href="profile/feedbacks">See Json's in profile</a>
</div>
</body>
</html>