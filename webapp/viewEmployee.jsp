<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employees List</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	 background-color: #fcf7ee;
}

.container {
	max-width: 100%;
	margin-top: 40px;
}

.card {
	box-shadow: 0 0 20px rgba(0, 123, 255, 1);
	 border: 1px solid black;
	 border-radius: 1rem;
}

.card:hover {
	box-shadow: 0 0 20px rgba(133, 255, 0, 1);
}
.theaddark{
	background-color:#77B254;
	color:white;
	font-weight:bold;
}

.table-responsive {
	max-height: 70vh;
	overflow-y: auto;
}

.btn-action {
	width: 80px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<h2 class="text-center text-success mb-4">Employees List</h2>
					<table class="table table-grey table-hover">
						<thead class="theaddark">
							<tr>
								<th>Employee ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Salary</th>
								<th>Role</th>
								<th>Experience</th>
								<th colspan="2" style="text-align:center">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="emp" items="${employees}">
								<tr>
									<td>${emp.eid}</td>
									<td>${emp.fname}</td>
									<td>${emp.lname}</td>
									<td>${emp.email}</td>
									<td>${emp.phone}</td>
									<td>${emp.age}</td>
									<td>${emp.gender}</td>
									<td>${emp.sal}</td>
									<td>${emp.role}</td>
									<td>${emp.experience}</td>
									<td><a href="editEmployee/${emp.eid}"
										class="btn btn-primary btn-sm btn-action">Edit</a></td>
									<td>
										<a href="deleteEmployee/${emp.eid}"
										class="btn btn-danger btn-sm btn-action">Delete</a></td>
									</td>
								</tr>
							</c:forEach>
						</tbody>
						
					</table>
					<div class="text-center mt-3">
							<a href="employeeform" class="btn btn-success">Add New
								Employee</a>
						</div>
				</div>
			</div>
		</div>

		<c:if test="${not empty errorMessage}">
			<div class="alert alert-danger mt-3" role="alert">
				${errorMessage}</div>
		</c:if>


	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
        function confirmDelete(id) {
            if (confirm('Are you sure you want to delete this employee?')) {
                window.location.href = 'deleteEmployee/' + id;
            }
        }
    </script>
</body>
</html>