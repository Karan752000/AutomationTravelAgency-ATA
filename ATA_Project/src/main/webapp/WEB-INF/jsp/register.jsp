<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<title>Register</title>
<style type="text/css">
/* div {
	display: flex;
	justify-content : center;
	align-items: center;
} */
.container {
	width: 40%;
	border: 1px solid black;
	border-radius: 3%;
}
body {
 background-image: url('https://images.pexels.com/photos/303383/pexels-photo-303383.jpeg?auto=compress&cs=tinysrgb&w=800');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
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
					<li class="nav-item active"><a class="nav-link" href="/">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/register">Register</a>
					</li>

				</ul>
			</div>
		</nav>
	</nav>
	<div class="container mt-5 bg-light">
		<div class="container-fluid ">
			<br>
			<h3 align="center">Register</h3>
			<h4 align="center" style="color:red" > <small >${msg}</small></h4>
			
			<br>


			<form action="registeruser" method="post">
				<div class="form-group">
					<label for="firstname">First Name:</label><br> <input
						type="text" class="form-control" placeholder="Enter first name"
						name="firstname" pattern="[A-Za-z]+" minlength="3" required>
				</div>
				<div class="form-group">
					<label for="lastname">Last Name:</label><br> <input
						type="text" class="form-control" placeholder="Enter last name"
						name="lastname" pattern="[A-Za-z]+" minlength="3" required>
				</div>
				<div class="form-group">
					<label for="dob">Date of Birth:</label><br> <input type="date"
						class="form-control" name="dob" required>
				</div>
				<div class="form-group">
					<label for="age">Age:</label><br> <input type="number"
						class="form-control" placeholder="Enter your age" name="age" min="18"
						required>
				</div>
				<div class="form-group">
					<label for="gender">Gender:</label><br> <input type="radio"
						name="gender" value="M">&nbsp;&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="gender" value="F">&nbsp;&nbsp;Female<br>



					<div class="form-group">
						<label for="phNo">Mobile No:</label><br> <input type="tel"  pattern="[0-9]{10}" 
							  class="form-control" placeholder="Enter 10-digit mobile number"
							name="phNo" required>
					</div>
					<div class="form-group">
						<label for="address">Address:</label><br> <input type="text"
							class="form-control" placeholder="Enter Address" name="address"
							required>
					</div>
					<div class="form-group">
						<label for="pincode">Pincode:</label><br> <input type="number" 
							class="form-control"  min="500000" max="900000"  placeholder="Enter 6-digit pincode" name="pincode" 
							required>
					</div>
 
				</div>
				<div class="form-group">
					<label for="emailId">Email address:</label><br> <input
						type="email" pattern="[a-zA-Z0-9]+@gmail.com" class="form-control" placeholder="Enter email"
						name="emailId"   required>
				</div>
				<div class="form-group">
					<label for="password">Password:</label><br> <input
						type="password" class="form-control" placeholder="Enter password"
						name="password" minlength="6" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required>
				</div>
				<div class="form-group">
					<label for="confirmpassword">Confirm Password:</label><br> <input
						type="password" class="form-control" placeholder="Enter password"
						name="confirmpassword" minlength="6" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required>
				</div>

				<a href="login"><small>Register User? click here</small></a><br>
				<br>
				<button type="submit" class="btn btn-primary" >Register</button>
				
				<br>
				<br>
			</form>
		</div>
	</div>
	<br>


</body>
</html>
 