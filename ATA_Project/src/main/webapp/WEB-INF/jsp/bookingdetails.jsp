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


<title>Booking details</title>
<style type="text/css">

body {
 background-image: url('https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=800');
   background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.a {
	text-decoration: none;
	color: white;
}

th, td {
	text-align: center;
}

.bt1 {
	float: right;
	margin-right: 5.5%;
	height: 3em;
	width: 20%;
}

.container {
	border: 1px solid black;
	border-radius: 2%;
	width: 50%;
}
/* body{
background-image: url("https://images.unsplash.com/photo-1433838552652-f9a46b332c40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80");
background-repeat: no-repeat;
background-position: center;
background-size: cover;

} */
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

	<h1 align="center"><b>Booking Details</b></h1>
	<c:forEach items="${bookingdetails}" var="b">
		<div class="container mt-4 bg-light">

			<div class="container-fluid">
				<form>
					<br>
					<div class="row">
						<div class="col">
							<label for="bookingId">Booking Id:</label> <input type="text"
								class="form-control" name="bookingId"
								value="${b.bookingId}" disabled="disabled">
						</div>
						<div class="col">
							<label for="firstname">Customer Name:</label> <input type="text"
								class="form-control" name="firstname"
								value="${ b.user.firstname}" disabled="disabled"><br>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="bookingDate">Booking Date:</label> <input type="text"
								class="form-control" name="bookingDate" value="${b.bookingDate}" disabled="disabled">
						</div>
						<div class="col">
							<label for="journeyDate">Journey Date:</label> <input type="text"
								class="form-control" name="journeyDate" value="${b.journeyDate}" disabled="disabled"><br>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="boardingPoint">Boarding Point:</label> <input
								type="text" class="form-control" name="boardingPoint"
								value="${b.boardingPoint}" disabled="disabled">
						</div>
						<div class="col">
							<label for="dropingPoint">Droping Point:</label> <input
								type="text" class="form-control" name="dropingPoint"
								value="${b.dropingPoint}" disabled="disabled"><br>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="bookingStatus">Booking Status:</label> <input
								type="text" class="form-control" name="bookingStatus"
								value="${b.bookingStatus}" disabled="disabled">
						</div>
						<div class="col">
							<label for="price">Price:</label> <input type="text"
								class="form-control" name="price" value="${b.price}" disabled="disabled"><br>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="bookingStatus">Payment Status:</label> <input
							style="width: 48%"	type="text" class="form-control" name="bookingStatus"
								value="${b.payment}" disabled="disabled">
						</div>
						
					</div>
				</form>
				<br>
				<div id="buttons" align="center">
					<button type="button" class="btn btn-primary">
						<a style="padding: 0%;" class="a"
							href="/customerdetails/${b.user.userId} ">Passenger details</a>
					</button>
					<button type="button" class="btn btn-primary">
						<a style="padding: 0%;" class="a"
							href="/vehiclebookeddetails/${b.vehicleId}">Vehicle details</a>
					</button>
					<button type="button" class="btn btn-primary">
						<a style="padding: 0%;" class="a"
							href="/driverbookeddetails/${b.driver.driverId}">Driver details</a>
					</button>

					<button type="button" class="btn btn-primary">
						<a style="padding: 0%;" class="a"
							href="routebookeddetails/${b.route.routeId}">Route details</a>
					</button>
				</div>

			</div>
			<br>
		</div>

	</c:forEach>
	
	<br><br>
</body>
</html>
