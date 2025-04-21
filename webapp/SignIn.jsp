<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Smart Emergency HealthCare System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    :root {
    --bg-color: #f0f4f8; 
    --text-color: #007b8f; 
    --box-bg: #d0f0f6; 
    --box-shadow: #007b8f; 
    --btn-bg: #007b8f;
    --btn-hover: #003e47; 
    --btn-text: #ffffff; 
}

.light-mode {
    --bg-color: #ffffff; 
    --text-color: #007b8f;
    --box-bg: #f0f4f8; 
    --box-shadow: #77cfd4; 
    --btn-bg: #007b8f;
    --btn-hover: #003e47;
    --btn-text: #ffffff;
}

body {
    background-color: var(--bg-color);
    color: var(--text-color);
    font-family: 'Gagalin', sans-serif;
    transition: background 0.5s, color 0.5s;
}

.navbar {
    background-color: var(--btn-bg);
    padding: 10px;
    border-bottom: 2px solid var(--box-shadow);
}

.navbar-brand {
    color: var(--btn-text) !important;
    font-size: 24px;
    font-weight: bold;
}

.nav-link {
    color: var(--btn-text) !important;
    margin-right: 15px;
    transition: color 0.3s ease-in-out;
}

.nav-link:hover {
    color: var(--box-bg) !important;
}

.theme-toggle {
    cursor: pointer;
    font-size: 24px;
    margin-left: 15px;
    color: var(--btn-text);
}

.signup-container {
    max-width: 450px;
    margin: 80px auto;
    padding: 30px;
    background: var(--box-bg);
    border-radius: 10px;
    box-shadow: 0px 0px 10px var(--box-shadow);
    transition: background 0.5s, box-shadow 0.5s;
}

.btn-custom {
    background-color: var(--btn-bg);
    color: var(--btn-text);
    padding: 10px 20px;
    border-radius: 10px;
    width: 100%;
    transition: background 0.3s, color 0.3s;
}

.btn-custom:hover {
    background-color: var(--btn-hover);
    color: var(--btn-text);
}

footer {
    margin-top: 50px;
    text-align: center;
    padding: 10px;
    background-color: #007b8f;
    border-top: 1px solid var(--box-shadow);
    color: var(--btn-text);
}

@media (max-width: 768px) {
    .navbar-brand {
        font-size: 20px;
    }

    .nav-link {
        font-size: 14px;
    }

    .theme-toggle {
        font-size: 20px;
        margin-left: 10px;
    }

    .signup-container {
        margin: 50px 20px;
        padding: 20px;
        max-width: 100%;
    }

    .btn-custom {
        font-size: 16px;
        padding: 8px 15px;
    }

    footer {
        padding: 15px;
        font-size: 14px;
    }
}

@media (max-width: 480px) {
    .navbar-brand {
        font-size: 15px;
    }

    .nav-link {
        font-size: 14px;
    }

    .theme-toggle {
        font-size: 20px;
        margin-left: 10px;
    }

    .signup-container {
        margin: 50px 20px;
        padding: 20px;
        max-width: 100%;
    }

    .btn-custom {
        font-size: 16px;
        padding: 8px 15px;
    }

    footer {
        padding: 15px;
        font-size: 14px;
    }
}

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">SMART EMERGENCY HEALTHCARE SYSTEM</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">AI</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Blood Donor</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                    <li class="nav-item">
                        <span class="theme-toggle" onclick="toggleTheme()">🌙</span>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="signup-container">
        <h2 class="text-center">Signup</h2>
        <form action="LoginServlet" method="post">
            <div class="mb-3">
                <label class="form-label">Full Name:</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="email" class="form-control" name="email" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password:</label>
                <input type="password" class="form-control" name="password" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Confirm Password:</label>
                <input type="password" class="form-control" name="confirm_password" required>
            </div>
            <button type="submit" class="btn btn-custom">Sign Up</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2025 Smart Emergency HealthCare System. All Rights Reserved.</p>
    </footer>

    <script>
        function toggleTheme() {
            document.body.classList.toggle("light-mode");
            let themeIcon = document.querySelector(".theme-toggle");
            if (document.body.classList.contains("light-mode")) {
                themeIcon.textContent = "☀️"; // Sun icon for light mode
                localStorage.setItem("theme", "light");
            } else {
                themeIcon.textContent = "🌙"; // Moon icon for dark mode
                localStorage.setItem("theme", "dark");
            }
        }

        // Load Theme Preference
        window.onload = function() {
            if (localStorage.getItem("theme") === "light") {
                document.body.classList.add("light-mode");
                document.querySelector(".theme-toggle").textContent = "☀️";
            } else {
                document.querySelector(".theme-toggle").textContent = "🌙";
            }
        };
    </script>
</body>
</html>