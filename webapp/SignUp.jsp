<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In - Smart Emergency HealthCare System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      :root {
    --bg-color: #f0f4f8;            
    --text-color: #000000;           
    --box-bg: #d0f0f6;              
    --box-shadow: #007b8f;          
    --btn-bg: #007b8f;               
    --btn-hover: #005f6b;           
    --btn-text: #ffffff;             
}

.light-mode {
    --bg-color: #ffffff;            
    --text-color: #000000;
    --box-bg: #f0f4f8;              
    --box-shadow: #007b8f;
    --btn-bg: #007b8f;
    --btn-hover: #005f6b;
    --btn-text: #ffffff;
}

body {
    background-color: var(--bg-color);
    color: var(--text-color);
    font-family: 'Arial', sans-serif;
    transition: background 0.5s, color 0.5s;
}

.navbar {
    background-color: var(--btn-bg);
    padding: 10px;
    margin-top: 2px;
}

.navbar-brand {
    color: var(--btn-text) !important;
    font-size: 24px;
    font-weight: bold;
    font-family: 'Horizon', sans-serif;
}

.nav-link {
    color: var(--btn-text) !important;
    transition: color 0.3s ease-in-out;
}

.nav-link:hover {
    color: var(--box-bg) !important;  
}

.theme-toggle {
    cursor: pointer;
    font-size: 20px;
    padding: 5px 10px;
    border-radius: 50%;
    transition: 0.3s;
    background: var(--btn-bg);
    color: var(--btn-text);
    border: none;
}

.theme-toggle:hover {
    background: var(--btn-hover);
}

.signin-container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background: var(--box-bg);
    border-radius: 10px;
    box-shadow: 0px 0px 10px var(--box-shadow);
    text-align: center;
}

.btn-custom {
    background-color: var(--btn-bg);
    color: var(--btn-text);
    width: 100%;
    transition: background 0.3s, color 0.3s;
}

.btn-custom:hover {
    background-color: var(--btn-hover);
    color: var(--btn-text);
}

footer {
    margin-top: 135px;
    text-align: center;
    padding: 10px;
    background: var(--btn-bg);
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
        padding: 10px;
        font-size: 14px;
        width: 460px;
    }
}

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">SMART EMERGENCY HEALTHCARE SYSTEM</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Signup</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                    <li class="nav-item">
                        
                    </li>
                    
                </ul>
                <span class="theme-toggle" onclick="toggleTheme()">🌙</span>
            </div>
        </div>
    </nav>

    <div class="container signin-container">
        <h3>Sign In</h3>
        <form action="SignUp" method="post">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-custom">Sign In</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2025 Smart Emergency HealthCare System. All Rights Reserved.</p>
    </footer>

    <script>
    function toggleTheme() {
        document.body.classList.toggle("light-mode");
        let themeButton = document.querySelector(".theme-toggle");

        if (document.body.classList.contains("light-mode")) {
            themeButton.innerHTML = "&#9728;"; // ☀️ Sun emoji
            localStorage.setItem("theme", "light");
        } else {
            themeButton.innerHTML = "&#127769;"; // 🌙 Moon emoji
            localStorage.setItem("theme", "dark");
        }
    }

    window.onload = function() {
        let themeButton = document.querySelector(".theme-toggle");
        if (localStorage.getItem("theme") === "light") {
            document.body.classList.add("light-mode");
            themeButton.innerHTML = "&#9728;"; // ☀️
        } else {
            themeButton.innerHTML = "&#127769;"; // 🌙
        }
    };

    </script>
</body>
</html>
