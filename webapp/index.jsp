<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Database</title>
    <style>
        :root {
            --blue-50: #f0f9ff;
            --blue-100: #e0f2fe;
            --blue-200: #bae6fd;
            --blue-600: #2563eb;
            --blue-700: #1d4ed8;
            --indigo-50: #eef2ff;
            --indigo-600: #4f46e5;
            --indigo-700: #4338ca;
            --emerald-600: #059669;
            --teal-600: #0d9488;
            --shadow-color: rgba(0, 0, 0, 0.1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            background-color: #fcf7ee;
        }

        .container {
            padding: 2rem;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .content-wrapper {
            background: white;
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0 10px 25px var(--shadow-color);
            width: 100%;
            max-width: 600px;
             border: 1px solid black;
            box-shadow: 0 0 20px rgba(255, 82, 82,0.7);
        }
        
         .content-wrapper:hover{
            background: white;
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0 10px 25px var(--shadow-color);
            width: 100%;
            max-width: 600px;
             border: 1px solid black;
            box-shadow: 0 0 20px rgba(136, 255, 0,0.7);
        }
        

        .gradient-text {
            font-size: 2.5rem;
            font-weight: bold;
            text-align: center;
            margin-bottom: 2rem;
            background: linear-gradient(to right, var(--emerald-600), var(--teal-600));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .card {
            background: white;
            padding: 1.5rem;
            border-radius: 0.75rem;
            box-shadow: 0 4px 6px var(--shadow-color);
            transition: all 0.3s ease;
            cursor: pointer; /* Add pointer cursor to indicate clickable cards */
        }

        .card:hover {
            transform: translateY(-4px);
            box-shadow: 0 10px 15px var(--shadow-color);
        }

        .card h2 {
            font-size: 1.5rem;
            color: #1f2937;
            margin-bottom: 1rem;
            text-align: center;
        }

        .button-group {
            display: flex;
            flex-direction: column;
            gap: 0.75rem;
        }

        .btn {
            display: inline-block;
            padding: 0.75rem 1rem;
            border-radius: 0.5rem;
            font-weight: 500;
            text-align: center;
            text-decoration: none;
            transition: all 0.3s ease;
            cursor: pointer;
            width: 100%;
            border: none;
            font-size: 1rem;
        }

        .btn-primary {
            background: linear-gradient(to right, var(--blue-600), var(--indigo-600));
            color: white;
        }

        .btn-primary:hover {
            background: linear-gradient(to right, var(--blue-400), var(--indigo-400));
            color: black;
            transform: translateY(-2px); /* Add slight elevation on hover */
        }

        .btn-outline {
            background: transparent;
            border: 1px solid var(--blue-200);
            color: var(--blue-600);
        }

        .btn-outline:hover {
            background: var(--blue-50);
            transform: translateY(-2px); /* Add slight elevation on hover */
        }

        @media ( max-width : 768px) {
            .container {
                padding: 1rem;
            }
            .content-wrapper {
                padding: 1.5rem;
            }
            .gradient-text {
                font-size: 2rem;
            }
            .card-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="content-wrapper">
            <h1 class="gradient-text">Employee Database</h1>

            <div class="card-grid">
                <!-- Employees Card -->
                <div class="card">
                    <div class="btn-group">
                        <a href="employeeform"><button class="btn btn-primary">Add Employee</button></a>
                        <a href="viewEmployee"><button class="btn btn-outline">View Employee</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Add hover effect to cards
        document.querySelectorAll('.card').forEach(card => {
            card.addEventListener('mouseenter', () => {
                card.style.transform = 'translateY(-4px)';
                card.style.boxShadow = '0 10px 15px rgba(0, 0, 0, 0.1)';
            });

            card.addEventListener('mouseleave', () => {
                card.style.transform = 'translateY(0)';
                card.style.boxShadow = '0 4px 6px rgba(0, 0, 0, 0.1)';
            });
        });

        // Form submission handling
        document.querySelectorAll('form').forEach(form => {
            form.addEventListener('submit', (e) => {
                // Add loading state to button
                const button = form.querySelector('button');
                const originalText = button.textContent;
                button.textContent = 'Loading...';
                button.disabled = true;

                // Reset button state after submission (simulated delay)
                setTimeout(() => {
                    button.textContent = originalText;
                    button.disabled = false;
                }, 1000);
            });
        });

        // Smooth scroll for any anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
    </script>
</body>
</html>
