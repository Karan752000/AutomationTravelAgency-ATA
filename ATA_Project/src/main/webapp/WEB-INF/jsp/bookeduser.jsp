<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<title>user details</title>




<style type="text/css">

body {
 background-image: url('https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=800');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.container {
	width: 40%;
	border: 1px solid black;
	border-radius: 2%;
}

.b {
	text-decoration: none;
	colour: white;
}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<!-- Navbar content -->
		<nav class="navbar navbar-expand-lg navbar-light bg-dark">
			<a class="navbar-brand" href="#">A-T-A</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarNavDropdown"
				align="right">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/admin">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/viewvehicles">Vehicle
							Details</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/getallbookings">Bookings Details</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/changepassword">Change Password</a></li>
					<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
				</ul>
			</div>
		</nav>
	</nav>

	<div class="container mt-5 bg-light">
		<br>
		<h1 align="center">User details</h1>
		<div class="container-fluid ">

			<form action="" method="">
				<div class="form-group">
					<label for="firstname">First Name:</label><br> <input
						type="text" class="form-control" placeholder="Enter name"
						name="firstname" value="${info.firstname }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="lastname">Last Name:</label><br> <input
						type="text" class="form-control" placeholder="Enter your age"
						name="lastname" value="${info.lastname }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="lastname">Date of Birth:</label><br> <input
						type="text" class="form-control" placeholder="Enter your age"
						name="lastname" value="${info.dob }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="age">Age:</label><br> <input type="text"
						class="form-control" placeholder="Enter name" name="age"
						value="${info.age }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="emailId">Email Id:</label><br> <input type="text"
						class="form-control" placeholder="Enter name" name="emailId"
						value="${info.emailId }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="phNo">Mobile Number:</label><br> <input
						type="text" class="form-control" placeholder="Enter name"
						name="phNo" value="${info.phNo }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="address">Address:</label><br> <input type="text"
						class="form-control" placeholder="Enter name" name="address"
						value="${info.address }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="pincode">Pincode:</label><br> <input type="text"
						class="form-control" placeholder="Enter name" name="pincode"
						value="${info.pincode }" disabled="disabled">
				</div>




				<br>

				<div align="right">
					<button type="button" class="btn btn-outline-primary">
						<a class="b" href="/getallbookings">Back</a>
					</button>
				</div>
				<br>
				<br>
			</form>
		</div>
	</div>



</body>
</html>