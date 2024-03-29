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

<title>update student information</title>
</head>
<body>
	<h1 class="text-center mt-3">CHANGE THE INFORMATION</h1>
	<p class="text-center">${update }</p>
	<div class="container mt-2">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<form action="${pageContext.request.contextPath }/update-handle"
					method="post">

					<input type="hidden" value="${st.id }" name="id" />
					<div class="form-group">
						<label for="name">Student Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailhelp"
							name="studentName" placeholder="Enter Student Name"
							value="${st.studentName }">
					</div>
					<div class="form-group">
						<label for="registrationNo">Registration Number</label> <input
							type="text" class="form-control" id="registration"
							aria-describedby="emailhelp" name="registrationNo"
							placeholder="Enter Regestration No"
							value="${st.registrationNo }">
					</div>
					<div class="form-group">
						<label for="mobile">Contact Number</label> <input type="text"
							class="form-control" id="contact" aria-describedby="emailhelp"
							name="mobileNo" placeholder="Enter Contact No"
							value="${st.mobileNo }">
					</div>
					<div class="form-group">
						<label for="book">Book</label> <input type="text"
							class="form-control" id="book" aria-describedby="emailhelp"
							name="bookName" placeholder="Enter Book Name"
							value="${st.bookName }">
					</div>
					<div class="form-group">
						<label for="issueDate">Book Issue Date</label> <input type="text"
							class="form-control" id="date" aria-describedby="emailhelp"
							name="issueDate" placeholder="DD/MM/YYYY"
							value="${st.issueDate }">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/process"
							class="btn btn-outline-danger">Back</a>
						<button class="btn btn-warning" type="submit">UPDATE</button>

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
