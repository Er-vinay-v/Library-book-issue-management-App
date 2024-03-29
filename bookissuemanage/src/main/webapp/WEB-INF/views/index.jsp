<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>student information</title>
</head>
<body>
	<h1 class="text-center mt-3">FILL THE INFORMATION</h1>
	<p class="text-center">${page }</p>
	<div class="container mt-2">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form action="process" method="post">

					<div class="form-group">
						<label for="name">Student Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailhelp"
							name="studentName" placeholder="Enter Student Name">
					</div>
					<div class="form-group">
						<label for="registrationNo">Registration Number</label> <input
							type="text" class="form-control" id="registration"
							aria-describedby="emailhelp" name="registrationNo"
							placeholder="Enter Regestration No">
					</div>
					<div class="form-group">
						<label for="mobile">Contact Number</label> <input type="text"
							class="form-control" id="contact" aria-describedby="emailhelp"
							name="mobileNo" placeholder="Enter Contact No">
					</div>
					<div class="form-group">
						<label for="book">Book</label> <input type="text"
							class="form-control" id="book" aria-describedby="emailhelp"
							name="bookName" placeholder="Enter Book Name">
					</div>
					<div class="form-group">
						<label for="issueDate">Book Issue Date</label> <input type="text"
							class="form-control" id="date" aria-describedby="emailhelp"
							name="issueDate" placeholder="DD/MM/YYYY">
					</div>
					
					<div class="container text-center">
					
					<button class="btn btn-success" tpye="submit">SUBMIT</button>
					
					</div>
				</form>

			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>



