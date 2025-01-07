<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pwd change</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<style type="text/css">
body {
  
 background-image: url('https://images.pexels.com/photos/303383/pexels-photo-303383.jpeg?auto=compress&cs=tinysrgb&w=800');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
/* div {
	display: flex;
	justify-content : center;
	align-items: center;
} */
.container {
	width: 30%;
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
	<br>


	<div class="container mt-5 bg-light">
		<div class="container-fluid ">
			<br>
			<h3 align="center">Change password</h3>
			<br>
			<%-- <h3>${err}</h3> --%>
			<form action="changepwd" method="post">
				<!-- <div class="form-group">
					<label for="emailId">Registered Email Id:</label><br> <input
						type="email" class="form-control" pattern="[a-zA-Z0-9]+@gmail.com"
						placeholder="Enter Registered Email" name="emailId" required>
				</div> -->
				<div class="form-group">
					<label for="passwordold">Old Password:</label><br> <input
						type="password" class="form-control"
						placeholder="Enter old password" name="passwordold" minlength="6" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required>
				</div>
				<div class="form-group">
					<label for="passwordnew">New Password:</label><br> <input
						type="password" class="form-control"
						placeholder="Enter new password" name="passwordnew" minlength="6" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required>
				</div>
				<div class="form-group">
					<label for="passwordnew">Confirm New Password:</label><br> <input
						type="password" class="form-control"
						placeholder="Enter new password" name="conpassnew" minlength="6" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required>
				</div>


				<button type="submit" class="btn btn-primary">Submit</button>
				<br> <br>
			</form>
		</div>
	</div>


</body>

</html>