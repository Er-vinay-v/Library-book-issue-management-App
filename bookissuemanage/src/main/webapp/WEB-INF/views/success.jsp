<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body >
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">

				<h1 class="text-center mb-3">STUDENTS DATA TABLE</h1>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">NAME</th>
							<th scope="col">REG-NO</th>
							<th scope="col">CONTACT</th>
							<th scope="col">BOOK-NAME</th>
							<th scope="col">DATE-ISSUE</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${details }" var="p">

							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.studentName }</td>
								<td>${p.registrationNo }</td>
								<td>${p.mobileNo }</td>
								<td>${p.bookName }</td>
								<td>${p.issueDate }</td>

								<td><a href="delete/${p.id }"><i
										class="fas fa-trash text-danger " style="font-size: 30px"></i></a>
									<a href="update/${p.id }"><i
										class="fas fa-pen nib-primary " style="font-size: 30px"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="${pageContext.request.contextPath }/"
						class="btn btn-outline-success">ADD STUDENT</a> 
					</a>
				</div>

			</div>

		</div>


	</div>
</body>
</html>




