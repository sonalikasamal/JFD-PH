<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Sporty shoes</title>
		<link type="text/css" rel="stylesheet" href="../resources/css/style.css">
		<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
		<link rel="stylesheet" href="../resources/bootstrap/css/bootstrap.min.css">
		<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans">
		<link rel="stylesheet" href="../resources/fonts/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/fonts/ionicons.min.css">
		<link rel="stylesheet" href="../resources/fonts/font-awesome.min.css">
		<link rel="stylesheet" href="../resources/fonts/ionicons.min.css">
		<link rel="stylesheet" href="../resources/fonts/material-icons.min.css">
	</head>
	<body
		style="background-image: url('../resources/images/background.png');">
		<div class="container-fluid h-100">
			<div class="row h-100">
				<jsp:include page="left-list.jsp"/>
				<div class="col-lg-10 float-left"><br>
					<center>
						<h3>Add a New Product</h3>
					</center><br>
					<form action="addProductProcess" method="POST">
						<div class="container">
							<label>Product Name : </label>
							<input type="text" placeholder="Enter name" name="name" required>
							<label>Company : </label>
							<input type="text" placeholder="Enter company" name="company" required>
							<label>Image Link : </label>
							<input type="text" placeholder="Enter image" name="image" required>
							<div class="row">
								<div class="col-md-6">
									<label>Size : </label>
									<input type="text" placeholder="Enter size" name="size" required>
								</div>
								<div class="col-md-6">
									<label>Price : </label>
									<input type="text" placeholder="Enter price" name="price" required>
								</div>
							</div>
							<button type="submit">Add</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>