<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<style type="text/css">
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
body {
 /* background-image: url('https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=800'); */
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
			<h3 align="center">Login</h3>
			<br>
			<h3 align="center" class="text-danger">
				<small>${err}</small>
			</h3>
			<form action="loginstatus" method="post">
				<div class="form-group">
					<label for="email">Email address:</label><br> <input
						type="email" class="form-control" placeholder="Enter email"
						name="email" pattern="[a-zA-Z0-9]+@gmail.com" required>
				</div>
				<div class="form-group">
					<label for="password">Password:</label><br> <input
						type="password" class="form-control" placeholder="Enter password"
						minlength="6" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required>
				</div>
				<div class="form-group form-check">
					<label class="form-check-label"> <input
						class="form-check-input" type="checkbox"> Remember me
					</label>
				</div>
				<a href="register"><small>New User? click here</small></a><br>
				<br>
				<button type="submit" class="btn btn-primary">Submit</button>
				<br>
				<br>
			</form>
		</div>
	</div>


	<!-- <div class="">

<form action="loginstatus" method="get">
<h1 >Login</h1><br>
<input type="email" placeholder="Enter your email ID" name=email required><br>
<input type="password" placeholder="Password" name="password" required><br>
<input type="submit" value="Submit">
</form>

</div> -->



</body>
</html>