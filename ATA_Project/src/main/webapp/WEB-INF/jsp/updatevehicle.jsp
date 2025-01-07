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


<title>update vehicle</title>


<style type="text/css">
/* div {
	display: flex;
	justify-content : center;
	align-items: center;
} */
.container{
	width:50%;
	border: 1px solid black ;
	border-radius: 2%;
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







<nav class="navbar navbar-dark bg-dark">
  <!-- Navbar content -->
  <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand" href="#">A-T-A</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse " id="navbarNavDropdown" align="right">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/admin">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/viewvehicles">Vehicle Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/getallbookings">Bookings Details</a>
      </li>
       <!-- <li class="nav-item">
        <a class="nav-link" href="/">Logout</a>
      </li> -->
      
    </ul>
  </div>
</nav>
</nav>



<div class="container mt-5 bg-light"><br>
	<h1 align="center">Update vehicle details</h1>
		<div class="container-fluid ">

			<form action="/action" method="post">
			<!-- <label for="vehicleId">vehicle id</label> -->
			<input type="hidden" value="${vehicle.vehicleId}"  name="vehicleId" readonly><br>
				<div class="form-group">
					<label for="name">Vehicle Name:</label><br> <input type="text"
						class="form-control" placeholder="Enter Vehicle name" name="name"  value="${vehicle.name} " minlength="3" required="required">
				</div>
				<div class="form-group">
					<label for="type">Vehicle Type:</label><br> <input type="text"
						class="form-control" placeholder="Enter type" name="type" value="${vehicle.type} " minlength="3"  required="required">
				</div>
				<div class="form-group">
					<label for="ac">AC/Non-AC:</label><br> <input type="text"
						class="form-control" placeholder="AC/Non-AC" name="ac" value="${vehicle.ac} " minlength="2" pattern="[A-Za-z-]+" required="required">
				</div>
				<div class="form-group">
					<label for="regNo">Registration number:</label><br> <input type="text"
						class="form-control" placeholder="Enter Registration no." name="regNo"  value="${vehicle.regNo} " readonly="readonly" required="required">
				</div>
				<div class="form-group">
					<label for="seatingCapacity">Seating Capacity:</label><br> <input type="number" 
					 	class="form-control" placeholder="Enter Seating capacity" name="seatingCapacity" min="1" max="55"  value="${vehicle.seatingCapacity} " required="required">
				</div>
				<div class="form-group">
					<label for="pricePerKm">Price per KM:</label><br> <input type="number" 
						class="form-control" placeholder="Enter price" min="1" name="pricePerKm"  value="${vehicle.pricePerKm} " required="required">
				</div>
				

				<br>
				<div align="center">
				<button  style="padding: 1% 5% " type="submit" class="btn btn-success"  id="delete" class="confirmation" onclick="return confirm('Are you sure?')" >Update</button>
				</div>
				<br><br><br>
				
				
			</form>
			
		</div>
	</div>
<br><br><br>

</body>
</html>

<!-- <script type="text/javascript">
function fun(){
	alert("Vehicle Details Updated successfully");
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

