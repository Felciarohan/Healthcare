<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart Emergency Healthcare System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Gagalin&family=Horizon&display=swap">
    <style>
       :root {
  --main-bg: #f0f4f8;              
  --accent-color: #007b8f;         
  --calm-blue: #d0f0f6;           
  --white: #ffffff;               
  --text-color: #000000;           
}

body {
  background-color: var(--main-bg);
  color: var(--text-color);
  font-family: 'Arial', sans-serif;
  transition: background 0.5s ease, color 0.5s ease;
}

.light-mode {
  background-color: var(--white);
  color: var(--text-color);
}

.navbar {
  background-color: var(--accent-color);
  padding: 10px;
  border-bottom: 2px solid var(--calm-blue);
}

.navbar-brand {
  color: var(--white) !important;
  font-size: 24px;
  font-weight: bold;
  font-family: 'Horizon', sans-serif;
  display: flex;
  align-items: center;
  gap: 8px;
}

.navbar-brand i {
  font-size: 26px;
}

.nav-link {
  color: var(--white) !important;
  transition: color 0.3s ease-in-out;
}

.nav-link:hover {
  color: var(--calm-blue) !important;
}

.theme-toggle {
  cursor: pointer;
  font-size: 24px;
  margin-left: 20px;
  color: var(--calm-blue);
}

.hero-section {
  text-align: center;
  padding: 100px 20px;
  background: linear-gradient(rgba(0, 123, 143, 0.7), rgba(0, 123, 143, 0.7));
  animation: fadeIn 1.5s ease-in-out;
  color: var(--white);
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.btn-custom {
  background-color: var(--accent-color);
  color: var(--white);
  padding: 10px 20px;
  font-size: 18px;
  border-radius: 10px;
  transition: all 0.3s;
  text-decoration: none;
}

.btn-custom:hover {
  background-color: var(--white);
  color: var(--accent-color);
}

.content {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 50px;
  text-align: center;
}

.feature-section {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
  padding: 50px;
}

.feature-box {
  background-color: #57a8b8;
  color: #000;
  padding: 20px;
  border-radius: 10px;
  width: 300px;
  text-align: center;
  transition: transform 0.3s ease-in-out;
  box-shadow: 0 0 8px var(--calm-blue);
}

.feature-box:hover {
  transform: scale(1.05);
}

.container1 {
  margin-top: 50px;
  text-align: center;
  width: 950px;
  margin-left: 180px;
}

@media (max-width: 1200px) {
  .container1 {
    width: 85%;
    margin: 50px auto 0;
  }
}

@media (max-width: 768px) {
  .hero-section {
    padding: 60px 15px;
  }

  .hero-section h1 {
    font-size: 28px;
  }

  .btn-custom {
    padding: 8px 16px;
    font-size: 16px;
  }

  .content,
  .feature-section {
    flex-direction: column;
    padding: 20px;
  }

  .feature-box {
    width: 100%;
  }

  .navbar {
    padding: 8px 10px;
  }

  .navbar-brand {
    font-size: 20px;
  }

  .nav-link {
    font-size: 16px;
  }

  .theme-toggle {
    font-size: 20px;
    margin-left: 10px;
  }

  .container1 {
    width: 90%;
    margin: 30px auto 0;
  }
}

@media (max-width: 480px) {
  .container1 {
    width: 95%;
    margin: 20px auto 0;
  }
}

.about-section {
  padding: 50px 20px;
  background: linear-gradient(rgba(3, 104, 120, 0.8), rgba(1, 115, 133, 0.8));
  border-radius: 10px;
  box-shadow: 0px 0px 12px var(--calm-blue);
  color: var(--white);
}

.about-section h1 {
  font-weight: bold;
  color: var(--white);
}

.about-section p {
  font-size: 18px;
  line-height: 1.6;
}

footer {
  margin-top: 60px;
  text-align: center;
  padding: 10px;
  background: var(--accent-color);
  border-top: 1px solid var(--calm-blue);
  color: var(--white);
}

body.light-mode {
    background-color: #f9f9fc;
    color: #1a1a1a;
}

body.light-mode .navbar {
    background-color: #ffffff;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

body.light-mode .navbar .nav-link,
body.light-mode .navbar .navbar-brand {
    color: rgb(39, 39, 85) !important;
}

body.light-mode .navbar .nav-link:hover {
    color: #0066cc;
}

body.light-mode .hero-section {
    background: linear-gradient(135deg, #e0f7fa, #ffffff); /* soft teal to white */
}

body.light-mode .hero-section h1 {
    color: #006064;
}

body.light-mode .hero-section p {
    color: #444;
}

body.light-mode .btn-custom {
    background-color: #0066cc;
    color: #ffffff;
}

body.light-mode .btn-custom:hover {
    background-color: #004d99;
}

body.light-mode .content h1 {
    color: #2c3e50;
}

body.light-mode .content h1 span {
    color: #2980b9;
}

body.light-mode .content p {
    color: #444;
}

body.light-mode .feature-section {
    background-color: #f0f4f8;
}

body.light-mode .feature-box {
    background-color: #ffffff;
    border-left: 4px solid #2980b9;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    color: #333333;
    transition: transform 0.3s;
}

body.light-mode .feature-box:hover {
    transform: scale(1.03);
}

body.light-mode .feature-title {
    color: #007acc;
}

body.light-mode .footer {
    background-color: #f2f2f2;
    color: #555555;
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
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Home.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="Services.jsp">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="ai.jsp">AI Bot</a></li>
                    <li class="nav-item"><a class="nav-link" href="SignIn.jsp">SignIn</a></li>
                    <li class="nav-item"><a class="nav-link" href="SignUp.jsp">SignUp</a></li>
                </ul>
                <span class="theme-toggle" onclick="toggleTheme()">🌙</span>
            </div>
        </div>
    </nav>
    
    <section class="hero-section">
        <div class="container">
            <h1>24/7 Emergency Healthcare at Your Fingertips</h1>
            <p>Fast, reliable, and expert medical assistance when you need it most.</p>
            <a href="#" class="btn btn-custom">Get Started</a>
        </div>
    </section>
    
    <div class="content">
        <div>
            <h1>SMART EMERGENCY <span>HEALTHCARE</span> SYSTEM</h1>
            <p>Revolutionizing emergency response with AI-driven real-time solutions.</p>
            <a href="#" class="btn btn-custom">🚨 Emergency Assistance</a>
        </div>
    </div>
    
    <div class="feature-section">
        <div class="feature-box"><h3 class="feature-title">Patient Identification</h3><p>Rapidly identify patients and access medical history.</p></div>
        <div class="feature-box"><h3 class="feature-title">AI Decision Support</h3><p>Real-time AI-driven treatment recommendations.</p></div>
        <div class="feature-box"><h3 class="feature-title">Hospital Integration</h3><p>Seamless emergency response communication.</p></div>
        <div class="feature-box"><h3 class="feature-title">One-Tap Emergency</h3><p>Instantly call for emergency assistance.</p></div>
        <div class="feature-box"><h3 class="feature-title">Blood Management</h3><p>Real-time blood donation and distribution.</p></div>
        <div class="feature-box"><h3 class="feature-title">AI Medical Chatbot</h3><p>Instant medical guidance for emergency cases.</p></div>
    </div>
    
    <footer class="footer text-center p-3">
        <p>&copy; 2025 Smart Emergency Healthcare System. All Rights Reserved.</p>
    </footer>
    
    <script>
        function toggleTheme() {
            document.body.classList.toggle("light-mode");
            let themeButton = document.querySelector(".theme-toggle");
            let navbar = document.querySelector(".navbar");
    
            if (document.body.classList.contains("light-mode")) {
                themeButton.innerHTML = "☀️";
                navbar.classList.remove("navbar-dark");
                navbar.classList.add("navbar-light");
                localStorage.setItem("theme", "light");
            } else {
                themeButton.innerHTML = "🌙";
                navbar.classList.remove("navbar-light");
                navbar.classList.add("navbar-dark");
                localStorage.setItem("theme", "dark");
            }
        }
    
        window.onload = function () {
            const theme = localStorage.getItem("theme");
            const themeButton = document.querySelector(".theme-toggle");
            const navbar = document.querySelector(".navbar");
    
            if (theme === "light") {
                document.body.classList.add("light-mode");
                themeButton.innerHTML = "☀️";
                navbar.classList.remove("navbar-dark");
                navbar.classList.add("navbar-light");
            }
        };
    </script>
    
</body>
</html>