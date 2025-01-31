<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #1e88e5;
            --secondary-color: #43a047;
            --background-color: #f0f4f8;
            --form-background: #ffffff;
            --text-color: #333333;
            --input-border: #cccccc;
            --backdrop-color: #0ef;
        }

        body {
            font-family: 'Arial', sans-serif;
             background-color: #fcf7ee;
            color: var(--text-color);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            position: relative;
            overflow: hidden;
        }

        .form-container {
            background-color: var(--form-background);
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(255, 0, 0, 1);
            padding: 2rem;
            width: 100%;
            max-width: 800px;
            position: relative;
            z-index: 1;
             border: 1px solid black;
        }
         .form-container:hover{
            background-color: var(--form-background);
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(136, 255, 0, 1);
            padding: 2rem;
            width: 100%;
            max-width: 800px;
            position: relative;
            z-index: 1;
        }

        h2 {
            color: var(--primary-color);
            margin-bottom: 1.5rem;
            text-align: center;
        }

        .form-label {
            font-weight: 600;
            color: var(--text-color);
        }

        .form-control, .form-select {
            border: 1px solid var(--input-border);
            border-radius: 4px;
            padding: 0.5rem;
            margin-bottom: 1rem;
        }

        .btn-primary {
            background-color: var(--primary-color);
            border: none;
            width: 100%;
            padding: 0.75rem;
            font-weight: 600;
            text-transform: uppercase;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-primary:hover {
            background-color: var(--secondary-color);
            transform: translateY(-2px);
        }

        /* Layout adjustments for two-row input fields */
        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .form-row .col-6 {
            flex: 1 1 48%;
        }

        .form-row .col-12 {
            flex: 1 1 100%;
        }

        /* Responsiveness for small screens */
        @media (max-width: 768px) {
            .form-row .col-6 {
                flex: 1 1 100%;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add Employee</h2>
        <form action="insertEmployee" method="post">
            <div class="form-row">
                <div class="col-6">
                    <div class="mb-3">
                        <label for="eid" class="form-label">Employee ID:</label>
                        <input type="text" class="form-control" id="eid" name="eid" required>
                    </div>
                    <div class="mb-3">
                        <label for="fname" class="form-label">First Name:</label>
                        <input type="text" class="form-control" id="fname" name="fname" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="age" class="form-label">Age:</label>
                        <input type="number" class="form-control" id="age" name="age" required>
                    </div>
                </div>
                <div class="col-6">
                    <div class="mb-3">
                        <label for="lname" class="form-label">Last Name:</label>
                        <input type="text" class="form-control" id="lname" name="lname" required>
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Phone Number:</label>
                        <input type="tel" class="form-control" id="phone" name="phone" required>
                    </div>
                    <div class="mb-3">
                        <label for="gender" class="form-label">Gender:</label>
                        <select class="form-select" id="gender" name="gender" required>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="sal" class="form-label">Salary:</label>
                        <input type="number" class="form-control" id="sal" name="sal" required>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-6">
                    <div class="mb-3">
                        <label for="role" class="form-label">Role:</label>
                        <select class="form-select" id="role" name="role" required>
                            <option value="Manager">Manager</option>
                            <option value="Developer">Developer</option>
                            <option value="Designer">Designer</option>
                            <option value="HR">HR</option>
                            <option value="Marketing">Marketing</option>
                            <option value="Sales">Sales</option>
                            <option value="Admin">Admin</option>
                        </select>
                    </div>
                </div>
                <div class="col-6">
                    <div class="mb-3">
                        <label for="experience" class="form-label">Experience (in years):</label>
                        <input type="number" class="form-control" id="experience" name="experience" required>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>
        </form><br>
        <a href="viewEmployee"><button class="btn btn-primary">View Employees</button></a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
