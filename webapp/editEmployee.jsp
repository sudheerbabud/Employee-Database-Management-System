<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fcf7ee;
            padding: 50px;
        }
        .form-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 123, 255, 1);
            padding: 30px;
            margin: auto;
            max-width: 700px;
            border: 1px solid black;
        }
        .form-group label {
            font-weight: 600;
            color: #333;
        }
        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 1);
        }
        .row {
            margin-bottom: 15px;
        }
        .form-container:hover {
            box-shadow: 0 0 25px rgba(255, 0, 0, 1);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2 class="text-center text-success">Edit Employee</h2>
        <form:form method="POST" action="/EmployeeDatabaseManagementSystem/updateEmployee">
            <form:hidden path="eid" />
            
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>First Name</label>
                    <form:input path="fname" cssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <label>Last Name</label>
                    <form:input path="lname" cssClass="form-control" />
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Phone</label>
                    <form:input path="phone" cssClass="form-control" />
                </div>
                <div class="col-md-6 form-group">
                    <label>Email</label>
                    <form:input path="email" cssClass="form-control" type="email" />
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Age</label>
                    <form:input path="age" cssClass="form-control" type="number" />
                </div>
                <div class="col-md-6 form-group">
                    <label>Gender</label>
                    <form:select path="gender" cssClass="form-control">
                        <form:option value="Male">Male</form:option>
                        <form:option value="Female">Female</form:option>
                    </form:select>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Salary</label>
                    <form:input path="sal" cssClass="form-control" type="number"/>
                </div>
                <div class="col-md-6 form-group">
                    <label>Role</label>
                    <form:select path="role" cssClass="form-control">
                        <form:option value="Manager">Manager</form:option>
                        <form:option value="Developer">Developer</form:option>
                        <form:option value="Designer">Designer</form:option>
                        <form:option value="HR">HR</form:option>
                        <form:option value="Marketing">Marketing</form:option>
                        <form:option value="Sales">Sales</form:option>
                        <form:option value="Admin">Admin</form:option>
                    </form:select>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-6 form-group">
                    <label>Experience</label>
                    <form:input path="experience" cssClass="form-control" />
                </div>
            </div>
            
            <div class="text-center">
                <button type="submit" class="btn btn-success">Update</button>
            </div>
        </form:form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
