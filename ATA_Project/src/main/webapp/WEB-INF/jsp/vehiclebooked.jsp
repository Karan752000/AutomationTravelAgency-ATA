
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




<%-- ${rb.source} --%>
<title>booked vehicle</title>

<style type="text/css">
/* div {
	display: flex;
	justify-content : center;
	align-items: center;
} */

body {
 background-image: url('https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=800');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.container {
	width: 43%;
	border: 1px solid black;
	border-radius: 3%;
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



	<%-- ${vb.name} --%>
	<div class="container mt-5 bg-light">
		<br>
		<h1 align="center">Vehicle Booked</h1>
		<div class="container-fluid ">
			<form action="" method="">
			<div class="form-group">
					<label for="vehicleId">Vehicle Id:</label><br> <input type="text"
						class="form-control" placeholder="Enter id" name="vehicleId"
						value="${vb.vehicleId }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="name">Vehicle Name:</label><br> <input type="text"
						class="form-control" placeholder="Enter name" name="name"
						value="${vb.name }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="type">Vehicle Type:</label><br> <input type="text"
						class="form-control" placeholder="Enter your age" name="type"
						value="${vb.type }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="ac">AC/Non-AC:</label><br> <input type="text"
						class="form-control" placeholder="Enter name" name="ac"
						value="${vb.ac }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="regNo">Registration number:</label><br> <input
						type="text" class="form-control" placeholder="Enter name"
						name="regNo" value="${vb.regNo }" disabled="disabled">
				</div>
				<div class="form-group">
					<label for="seatingCapacity">Seating Capacity:</label><br> <input
						type="text" class="form-control" placeholder="Enter name"
						name="seatingCapacity" value="${vb.seatingCapacity }"
						disabled="disabled">
				</div>
				<div class="form-group">
					<label for="pricePerKm">Price per KM:</label><br> <input
						type="text" class="form-control" placeholder="Enter name"
						name="pricePerKm" value="${vb.pricePerKm }" disabled="disabled">
				</div>





				<br>
				<div align="right">
					<button type="button" class="btn btn-outline-primary">
						<a href="/getallbookings">Back</a>
					</button>
				</div>

				<br> <br>
			</form>
		</div>
	</div>




<br><br>
</body>
</html>




