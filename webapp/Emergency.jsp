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
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Gagalin&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Horizon&display=swap');

:root {
  --main-bg: #e0f7fa;              
  --accent-color: #007b8f;         
  --calm-green: #a5d6a7;          
  --white: #ffffff;                
}

body {
  background-color: var(--main-bg);
  color: black;
  font-family: 'Gagalin', sans-serif;
}

.navbar {
  background-color: var(--accent-color); 
  padding: 15px;
}

.navbar-brand {
  color: var(--white) !important;
  font-size: 24px;
  font-weight: bold;
  font-family: 'Horizon', sans-serif;
}

.nav-link {
  color: var(--white) !important;
  transition: 0.3s;
  font-size: 18px;
}

.nav-link:hover {
  color: var(--calm-green) !important; 
}

.hero-section {
  text-align: center;
  padding: 100px 20px;
}

.hero-section h1 {
  font-size: 50px;
  color: var(--accent-color); 
  font-weight: bold;
  font-family: 'Horizon', sans-serif;
  animation: fadeIn 2s ease-in-out;
}

.btn-emergency {
  background-color: #f90e26;  
  color: var(--white);
  padding: 15px 25px;
  font-size: 20px;
  font-weight: bold;
  border-radius: 10px;
  transition: 0.3s;
}

.btn-emergency:hover {
  background-color: #f90e26;  
}

.content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 50px;
  animation: slideIn 1.5s ease-in-out;
}

.feature-section {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
  padding: 50px;
}

.feature-box {
  background-color: #007b8f;  
  padding: 20px;
  border-radius: 10px;
  width: 30%;
  text-align: center;
  transition: transform 0.3s;
}

.feature-box:hover {
  transform: scale(1.05);
}

.data-notice {
  font-size: 14px;
  color: black;
  margin-top: 10px;
}

footer {
  margin-top: 60px;
  text-align: center;
  padding: 10px;
  background: var(--accent-color);  
  border-top: 1px solid var(--calm-green);  
  color: var(--white);
}

@media (max-width: 768px) {
  .hero-section {
    padding: 60px 15px;
  }

  .hero-section h1 {
    font-size: 32px;
  }

  .btn-emergency {
    padding: 12px 20px;
    font-size: 16px;
  }

  .content {
    flex-direction: column;
    padding: 20px;
    text-align: center;
  }

  .feature-section {
    flex-direction: column;
    padding: 20px;
  }

  .feature-box {
    width: 100%;
  }

  .nav-link {
    font-size: 16px;
  }

  .navbar {
    padding: 10px;
  }

  .navbar-brand {
    font-size: 20px;
  }
}


    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">SMART EMERGENCY HEALTHCARE</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Home.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="Services.jsp">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="Emergency.jsp">Emergency</a></li>
                    <li class="nav-item"><a class="nav-link" href="AboutUs.jsp">AboutUS</a></li>
                    <li class="nav-item"><a class="nav-link" href="ai.jsp">AI chatBot</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <section class="hero-section">
        <div class="container">
            <h1>Emergency Healthcare at Your Fingertips</h1>
            <p>Immediate access to life-saving treatment and ambulance services.</p>
            <a href="#" class="btn btn-emergency">🚑 Request Emergency Help</a>
            <p class="data-notice">*By requesting emergency help, your location and medical details may be shared with the nearest hospital for faster assistance.</p>
        </div>
    </section>
    
    <div class="feature-section">
        <div class="feature-box"><h3>Rapid Response</h3><p>Instantly connects patients with the nearest emergency medical services.</p></div>
        <div class="feature-box"><h3>Live Ambulance Tracking</h3><p>Monitor ambulance arrival in real time for improved coordination.</p></div>
        <div class="feature-box"><h3>Emergency First Aid</h3><p>AI-driven guidance for immediate on-spot treatment before professionals arrive.</p></div>
    </div>
    
    <footer class="footer text-center py-3">
        <p>&copy; 2025 Smart Emergency Healthcare. All Rights Reserved.</p>
        <p class="data-notice">*Your medical details and location may be securely transferred to nearby hospitals for emergency treatment.</p>
    </footer>
</body>
</html>
