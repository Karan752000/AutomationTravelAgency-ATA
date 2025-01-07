<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<title>Home</title>

<style type="text/css">
.container {
	display: flex;
	/* flex-wrap: wrap; */
	/* margin: 1px; */
	gap: 3%;
}

body {
 background-image: url('https://images.pexels.com/photos/547114/pexels-photo-547114.jpeg?auto=compress&cs=tinysrgb&w=800');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
</head>
<body>
<div class="bg-dark"  align ="center" style="color: white; font-size: 2em; "><b>Automation Travel Agency</b></div>
	<nav class="navbar navbar-dark bg-dark">
		<!-- Navbar content -->
		<nav class="navbar navbar-expand-lg navbar-light bg-dark">
			<a class="navbar-brand" href="#">A-T-A</a>
			<button class="navbar-toggler " type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">Login
							</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/register">Register</a></li>
					
				</ul>
			</div>
		</nav>
	</nav>
	<!-- <h1 align="center">Admin page</h1>
 -->
 <br>
	<div class="container-fluid" style="width: 80% ">
		<div class="card mb-3">
			<img class="card-img-top" style="height: 15em"
				src="https://images.pexels.com/photos/2341830/pexels-photo-2341830.jpeg?auto=compress&cs=tinysrgb&w=800"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Automation Travel Agency</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>

			</div>
		</div>

	</div>

	<div class="container">
		<div class="card" style="width: 18rem;">
			<img class="card-img-top"
				src="https://images.herzindagi.info/image/2021/Oct/Mysore-best-places_g.jpg"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Mysore</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
			</div>
		</div>
		<div class="card" style="width: 18rem;">
			<img class="card-img-top"
				src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/d2/2f/7a/palace-from-the-outside.jpg?w=700&h=500&s=1"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Bangalore</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
			</div>
		</div>
		<div class="card" style="width: 18rem;">
			<img class="card-img-top"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhH_ipklVQT77rzXQPoDsfHgCgm5cP9C8SAw&usqp=CAU"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Chennai</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
			</div>
		</div>
		<div class="card" style="width: 18rem;">
			<img class="card-img-top"
				src="https://content.r9cdn.net/rimg/dimg/bf/93/43b36f9a-city-33181-1765246e921.jpg?width=1366&height=768&xhint=1696&yhint=1559&crop=true"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">Coimbatore</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
			</div>
		</div>
		

	</div>
	<br><br>
</body>

</html>
