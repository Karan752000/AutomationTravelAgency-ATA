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



<title>vehicles details</title>
<style type="text/css">
a {
	text-decoration: none;
	color: white;
}

th, td {
	text-align: center;
}
body {
 background-image: url('https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=800');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.bt1 {
	float: right;
	margin-right: 5.5%;
	height: 3em;
	width: 20%;
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
	<div class="container mt-4">
		<h1 align="center"><b>Vehicle Details</b></h1>

		<button type="button" class="btn btn-success bt1">
			<a href="/addvehicle ">Add vehicle</a>
		</button>
		<br> <br> <br>
		<table class="table table-dark">
			<!-- <table class="table"> -->
			<thead class="thead-dark">
				<tr>
					<th scope="col">Vehicle Id</th>
					<th scope="col">Vehicle Name</th>
					<th scope="col">Vehicle Type</th>
					<th scope="col">Registration No</th>
					<th scope="col">Seating Capacity</th>
					<th scope="col">AC/NON-AC</th>
					<th scope="col">Price per Km</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${vehicles}" var="v">

					<tr>
						<td>${v.vehicleId}</td>
						<td>${v.name}</td>
						<td>${v.type}</td>
						<td>${v.regNo}</td>
						<td>${v.seatingCapacity}</td>
						<td>${v.ac}</td>
						<td>${v.pricePerKm}</td>
						<td><button type="button" class="btn btn-primary">
								<a href="/updatevehicle/${v.vehicleId} ">Update</a>
							</button>
							<button type="button" class="btn btn-danger">
								<a href="/deletevehicle/${v.vehicleId} " id="delete" class="confirmation" onclick="return confirm('Are you sure?')">Delete</a>
							</button></td>
							
					</tr>


				</c:forEach>


			</tbody>
		</table>
	</div>
	<!-- <button type="button" class="btn btn-success"><a href="admin">back</a></button> -->



</body>
</html>

<!-- <script type="text/javascript">
function fun(){
	alert("Vehicle Details deleted successfully");
}
</script> -->

<script type="text/javascript">

    var elems = document.getElementsByClassName('confirmation');

    var confirmIt = function (e) {

        if (!confirm('Are you sure?')) e.preventDefault();

    };

    for (var i = 0, l = elems.length-1; i < l; i++) {

        elems[i].addEventListener('click', confirmIt, false);

    }

</script>